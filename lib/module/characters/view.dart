import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:marvel_visualiser/data/entity/character/marvel_response.dart'
    as character;
import 'package:marvel_visualiser/data/entity/character/marvel_response.dart';
import 'package:marvel_visualiser/data/entity/character/result.dart'
    as character;
import 'package:marvel_visualiser/data/repository/character_repository.dart';
import 'package:marvel_visualiser/router/app_router_names.dart';
import 'package:marvel_visualiser/widgets/error_view.dart';
import 'package:marvel_visualiser/widgets/infinite_grid_list_view.dart';
import 'package:marvel_visualiser/widgets/search_bar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view.g.dart';

@Riverpod(keepAlive: false)
class Offset extends _$Offset {
  @override
  int build() => 0;
}

@Riverpod(keepAlive: true)
class SearchText extends _$SearchText {
  @override
  String build() => '';
}

@Riverpod(keepAlive: false)
Future<character.CharacterMarvelResponse?> _charactersFetcher(
    _CharactersFetcherRef ref) {
  final characterRepository = ref.watch(characterRepositoryProvider);
  final offset = ref.watch(offsetProvider);
  final searchText = ref.watch(searchTextProvider);
  return characterRepository.getCharacters(query: searchText, offset: offset);
}

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
    charactersResponse.when(
        data: (characters) {
          final newCharacters = characters!.data!.results;
          errorMessage = null;
          if (lastCharactersFetch != newCharacters) {
            lastCharactersFetch = newCharacters;
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
                  initialValue: ref.read(searchTextProvider),
                  search: (
                    String value,
                  ) {
                    if (value.isNotEmpty) {
                      ref.read(offsetProvider.notifier).state = 0;
                      ref.read(searchTextProvider.notifier).state = value;
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
                        ref.read(offsetProvider.notifier).state += 20;
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
