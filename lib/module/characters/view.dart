import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/data/entity/character/marvel_response.dart';
import 'package:marvel_visualiser/data/entity/character/result.dart';
import 'package:marvel_visualiser/module/app/app.dart';
import 'package:marvel_visualiser/widgets/search_bar.dart';
import '../../widgets/infinite_scroll_view.dart';

final _offsetProvider = StateProvider<int>(((ref) => 0));

final _searchTextProvider = StateProvider<String>(((ref) => ''));

final _charactersProvider = FutureProvider<MarvelResponse?>(((ref) {
  final characterRepository = ref.read(characterRepositoryProvider);
  final offset = ref.watch(_offsetProvider);
  final searchText = ref.watch(_searchTextProvider);
  return characterRepository.getCharacters(query: searchText, offset: offset);
}));

class CharactersView extends ConsumerStatefulWidget {
  const CharactersView({super.key});

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
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
    return SafeArea(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: SearchBar(search: (String value) {
                if (value.isNotEmpty) {
                  ref.read(_offsetProvider.notifier).state = 0;
                  ref.read(_searchTextProvider.notifier).state = value;
                  allCharacters = [];
                }
              })),
          Expanded(
            flex: 10,
            child: (errorMessage != null)
                ? ErrorView(message: errorMessage)
                : InfiniteGridListView(
                    allCharacters: allCharacters, isLoading: isLoading),
          ),
        ],
      ),
    );
  }
}

class InfiniteGridListView extends ConsumerStatefulWidget {
  const InfiniteGridListView(
      {super.key, required this.allCharacters, required this.isLoading});
  final List<Result> allCharacters;
  final bool isLoading;

  @override
  InfiniteGridListViewState createState() => InfiniteGridListViewState();
}

class InfiniteGridListViewState extends ConsumerState<InfiniteGridListView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InfiniteScrollView(
          scrollController: _scrollController,
          onMaxScroll: () {
            ref.read(_offsetProvider.notifier).state += 20;
          },
          child: GridView.builder(
            padding: const EdgeInsets.only(bottom: 100),
            controller: _scrollController,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemBuilder: ((context, index) {
              return MarvelCardView(
                title: widget.allCharacters[index].name!,
                image:
                    '${widget.allCharacters[index].thumbnail?.path}.${widget.allCharacters[index].thumbnail?.extension}',
              );
            }),
            itemCount: widget.allCharacters?.length,
          ),
        ),
        if (widget.isLoading)
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
    );
  }
}

class MarvelCardView extends StatelessWidget {
  const MarvelCardView({Key? key, required this.title, required this.image})
      : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    const unkownImage =
        'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg';
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: const Color.fromARGB(209, 255, 255, 255),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  title ?? 'Unkown',
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

class ErrorView extends StatelessWidget {
  const ErrorView({super.key, required this.message});
  final String? message;
  final defaultMessage = 'An error occured can\'t load data';

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message ?? defaultMessage));
  }
}
