import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:marvel_visualiser/data/entity/character/marvel_response.dart'
    as character;
import 'package:marvel_visualiser/data/entity/character/result.dart'
    as character;
import 'package:marvel_visualiser/module/app/app.dart';
import 'package:marvel_visualiser/router/app_router_names.dart';
import 'package:marvel_visualiser/router/marvel_visualizer_route.dart';
import 'package:marvel_visualiser/widgets/search_bar.dart';
import '../../widgets/infinite_scroll_view.dart';

final _offsetProvider = StateProvider<int>(((ref) => 0));

final _searchTextProvider = StateProvider<String>(((ref) => ''));

final _charactersProvider = FutureProvider<character.MarvelResponse?>(((ref) {
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
  List<character.Result> allCharacters = [];
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
                : InfiniteGridListView<character.Result>(
                    allResults: allCharacters,
                    isLoading: isLoading,
                    onMaxScrollFunction: () {
                      ref.read(_offsetProvider.notifier).state += 20;
                    },
                    scrollController: _scrollController,
                  ),
          ),
        ],
      ),
    );
  }
}

class InfiniteGridListView<T> extends ConsumerStatefulWidget {
  const InfiniteGridListView(
      {required this.scrollController,
      required this.onMaxScrollFunction,
      super.key,
      required this.allResults,
      required this.isLoading});
  final List<T> allResults;
  final bool isLoading;
  final Function onMaxScrollFunction;
  final ScrollController scrollController;

  @override
  InfiniteGridListViewState createState() => InfiniteGridListViewState();
}

class InfiniteGridListViewState extends ConsumerState<InfiniteGridListView> {
  @override
  void initState() {
    super.initState();
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
          scrollController: widget.scrollController,
          onMaxScroll: () {
            widget.onMaxScrollFunction();
          },
          child: GridView.builder(
            padding: const EdgeInsets.only(bottom: 100),
            controller: widget.scrollController,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemBuilder: ((context, index) {
              final result = widget.allResults[index];
              if (result is character.Result) {
                final int? id = result.id;
                final String title = result.name!;
                final String image =
                    '${result.thumbnail?.path}.${result.thumbnail?.extension}';
                final String? comicsCollectionUri =
                    result.comics?.collectionUri;
                final String? seriesCollectionUri =
                    result.series!.collectionUri;
                final String? eventsCollectionUri =
                    result.events!.collectionUri;
                return MarvelCardView(
                    title: title,
                    image: image,
                    onTap: () {
                      _onTapGoToChracterDetails(id, comicsCollectionUri,
                          seriesCollectionUri, eventsCollectionUri);
                    });
              } else {
                final int? id = result.id;
                final String title = result.title;
                final String image =
                    '${result.thumbnail?.path}.${result.thumbnail?.extension}';
                final String? charactersCollectionUri =
                    result.characters?.collectionUri;
                final String? creatorsCollectionUri =
                    result.creators!.collectionUri;
                final String? eventsCollectionUri =
                    result.events!.collectionUri;
                return MarvelCardView(
                    title: title,
                    image: image,
                    onTap: () {
                      _onTapGoToChracterDetails(id, charactersCollectionUri,
                          creatorsCollectionUri, eventsCollectionUri);
                    });
              }
            }),
            itemCount: widget.allResults?.length,
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

  _onTapGoToChracterDetails(int? id, String? firtsCollection,
      String? secondeCollection, String? thirdCollection) {
    GoRouter.of(context)
        .goNamed(MarvelVisualizerRoutes.characterDetailsRoute.name, params: {
      'id': '$id',
      'comicsCollectionUri': firtsCollection ?? '',
      'seriesCollectionUri': secondeCollection ?? '',
      'eventsCollectionUri': thirdCollection ?? ''
    });
  }
}

class MarvelCardView extends StatelessWidget {
  const MarvelCardView(
      {Key? key, required this.title, required this.image, required this.onTap})
      : super(key: key);
  final String title;
  final String image;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    const unkownImage =
        'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg';
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Stack(
          fit: StackFit.expand,
          children: [
            (image != unkownImage)
                ? Image.network(
                    image,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    image,
                    fit: BoxFit.none,
                  ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                //clipBehavior: Clip.none,
                color: Colors.black38,
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  title ?? 'Unkown',
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        ),
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
