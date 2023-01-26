import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/data/entity/marvel_response.dart';
import 'package:marvel_visualiser/data/entity/result.dart';
import 'package:marvel_visualiser/module/app/app.dart';
import 'package:marvel_visualiser/widgets/search_bar.dart';

final _offsetProvider = StateProvider<int>(((ref) => 0));

final _searchTextProvider = StateProvider<String>(((ref) => ''));

final _charactersProvider = FutureProvider<MarvelResponse?>(((ref) {
  print('make call');
  final characterRepository = ref.read(characterRepositoryProvider);
  final offset = ref.watch(_offsetProvider);
  final searchText = ref.watch(_searchTextProvider);
  return characterRepository.getCharacters(query: searchText, offset: offset);
}));

class CharactersView extends ConsumerStatefulWidget {
  const CharactersView({super.key, required this.title});
  final String title;

  @override
  CharactersViewState createState() => CharactersViewState();
}

class CharactersViewState extends ConsumerState<CharactersView> {
  late ScrollController _scrollController;
  bool isLoading = false;
  String? errorMessage = null;
  List<Result> allCharacters = [];
  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.position.maxScrollExtent ==
          _scrollController.position.pixels) {
        ref.read(_offsetProvider.notifier).state += 20;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    final charactersResponse = ref.watch(_charactersProvider);
    charactersResponse.when(
        data: (characters) {
          errorMessage = null;
          allCharacters.addAll(characters!.data!.results);
          isLoading = false;
        },
        loading: () {
          errorMessage = null;
          isLoading = true;
        },
        error: (error, stackTrace) =>
            errorMessage = 'An error Occured can\'t load characters ');
    return Scaffold(
        backgroundColor: Colors.redAccent,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: SearchBar(search: (String value) {
                    ref.read(_offsetProvider.notifier).state = 0;
                    ref.read(_searchTextProvider.notifier).state = value;
                    allCharacters = [];
                  })),
              Expanded(
                flex: 10,
                child: Stack(
                  children: [
                    GridView.builder(
                      padding: const EdgeInsets.only(bottom: 100),
                      controller: _scrollController,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 300,
                              childAspectRatio: 2 / 3,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5),
                      itemBuilder: ((context, index) {
                        return CharacterCardView(
                            character: allCharacters[index]!);
                      }),
                      itemCount: allCharacters?.length,
                    ),
                    if (isLoading)
                      const Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: CircularProgressIndicator(
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(209, 255, 255, 255),
            onTap: (int newIndex) {},
            items: const [
              BottomNavigationBarItem(
                  label: 'Characters', icon: Icon(Icons.tv)),
              BottomNavigationBarItem(
                  label: 'Comics', icon: Icon(Icons.person)),
              BottomNavigationBarItem(label: 'Tv Shows', icon: Icon(Icons.tv)),
            ]));
  }
}

class CharacterCardView extends StatelessWidget {
  const CharacterCardView({Key? key, required this.character})
      : super(key: key);

  final Result character;

  @override
  Widget build(BuildContext context) {
    final image =
        '${character.thumbnail?.path}.${character.thumbnail?.extension}';
    const unkownImage =
        'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg';
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Color.fromARGB(209, 255, 255, 255),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Expanded(
              flex: 6,
              child: (image != unkownImage)
                  ? Image.network(
                      image,
                      fit: BoxFit.cover,
                    )
                  : Image.network(
                      image,
                      fit: BoxFit.none,
                    )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  character.name ?? 'No name',
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
