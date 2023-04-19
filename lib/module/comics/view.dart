import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:marvel_visualiser/data/entity/comic/marvel_response.dart';
import 'package:marvel_visualiser/data/repository/comic_repository.dart';
import 'package:marvel_visualiser/router/app_router_names.dart';
import 'package:marvel_visualiser/widgets/error_view.dart';
import 'package:marvel_visualiser/widgets/infinite_grid_list_view.dart';
import 'package:marvel_visualiser/widgets/search_bar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view.g.dart';

@Riverpod(keepAlive: false)
class _Offset extends _$Offset {
  @override
  int build() => 0;
}

@Riverpod(keepAlive: false)
class _SearchText extends _$SearchText {
  @override
  String build() => '';
}

@Riverpod(keepAlive: false)
Future<ComicMarvelResponse?> _comics(_ComicsRef ref) {
  final comicsRepository = ref.watch(comicRepositoryProvider);
  final offset = ref.watch(_offsetProvider);
  final searchText = ref.watch(_searchTextProvider);
  return comicsRepository.getComics(query: searchText, offset: offset);
}

class ComicsView extends ConsumerStatefulWidget {
  const ComicsView({super.key});

  @override
  ComicsViewState createState() => ComicsViewState();
}

class ComicsViewState extends ConsumerState<ComicsView> {
  late ScrollController _scrollController;
  bool isLoading = false;
  String? errorMessage = null;
  List<Result> allComics = [];
  List<Result> lastComicsFetch = [];

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
    final comicsResponse = ref.watch(_comicsProvider);
    comicsResponse.when(
        data: (comics) {
          final newComics = comics!.data!.results;
          errorMessage = null;
          if (lastComicsFetch != newComics) {
            lastComicsFetch = newComics;
            allComics.addAll(newComics);
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
                      allComics = [];
                    }
                  })),
          Expanded(
            flex: 10,
            child: (errorMessage != null)
                ? ErrorView(message: errorMessage)
                : Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InfiniteGridListView<Result>(
                      allResults: allComics,
                      isLoading: isLoading,
                      onMaxScrollFunction: () {
                        ref.read(_offsetProvider.notifier).state += 20;
                      },
                      onTap: _onTapGoToComicDetails,
                      scrollController: _scrollController,
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  _onTapGoToComicDetails(int? id, String? firtsCollection,
      String? secondeCollection, String? thirdCollection) {
    GoRouter.of(context)
        .goNamed(MarvelVisualizerRoutes.comicDetailsRoute.name, params: {
      'id': '$id',
      'charactersCollectionUri': firtsCollection ?? '',
      'creatorsCollectionUri': secondeCollection ?? '',
      'eventsCollectionUri': thirdCollection ?? ''
    });
  }
}
