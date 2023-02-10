import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:marvel_visualiser/data/entity/character/marvel_response.dart'
    as character;
import 'package:marvel_visualiser/data/entity/character/result.dart'
    as character;
import 'package:marvel_visualiser/data/repository/character_repository.dart';
//import 'package:marvel_visualiser/module/characters/all_characters_notifier.dart';
import 'package:marvel_visualiser/router/app_router_names.dart';
import 'package:marvel_visualiser/widgets/error_view.dart';
import 'package:marvel_visualiser/widgets/infinite_grid_list_view.dart';
import 'package:marvel_visualiser/widgets/search_bar.dart';

final _offsetProvider = StateProvider.autoDispose<int>(((ref) => 0));

final _searchTextProvider = StateProvider.autoDispose<String>(((ref) => ''));

final _charactersFetcherProvider =
    FutureProvider.autoDispose<character.MarvelResponse?>(((ref) {
  final characterRepository = ref.read(characterRepositoryProvider);
  final offset = ref.watch(_offsetProvider);
  final searchText = ref.watch(_searchTextProvider);
  return characterRepository.getCharacters(query: searchText, offset: offset);
}));

/*final _allCharactersProvider =
    StateNotifierProvider<AllCharactersNotifier, List<character.Result>>(
        (ref) => AllCharactersNotifier([]));*/

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
  List<character.Result> lastCharactersFetch = [];
  @override
  void initState() {
    print('init executed');
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    final charactersResponse = ref.watch(_charactersFetcherProvider);
    //final allCharacters = ref.watch(_allCharactersProvider);
    charactersResponse.when(
        data: (characters) {
          final newCharacters = characters!.data!.results;
          errorMessage = null;
          if (lastCharactersFetch != newCharacters) {
            lastCharactersFetch = newCharacters;
            /*ref
                .read(_allCharactersProvider.notifier)
                .addCharacters(newCharacters);*/
            allCharacters.addAll(newCharacters);
          }
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
              child: SearchBar(
                  initialValue: ref.read(_searchTextProvider),
                  search: (
                    String value,
                  ) {
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
                : Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InfiniteGridListView<character.Result>(
                      allResults: allCharacters,
                      isLoading: isLoading,
                      onMaxScrollFunction: () {
                        ref.read(_offsetProvider.notifier).state += 20;
                      },
                      onTap: _onTapGoToChracterDetails,
                      scrollController: _scrollController,
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  void _onTapGoToChracterDetails(
    int? id,
    String? firtsCollection,
    String? secondeCollection,
    String? thirdCollection,
  ) {
    GoRouter.of(context).goNamed(
      MarvelVisualizerRoutes.characterDetailsRoute.name,
      params: {
        'id': '$id',
        'comicsCollectionUri': firtsCollection ?? '',
        'seriesCollectionUri': secondeCollection ?? '',
        'eventsCollectionUri': thirdCollection ?? '',
      },
    );
  }
}
