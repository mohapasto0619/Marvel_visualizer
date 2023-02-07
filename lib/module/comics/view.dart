import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/data/entity/comic/marvel_response.dart';
import 'package:marvel_visualiser/module/app/app.dart';
import 'package:marvel_visualiser/module/characters/view.dart';
import 'package:marvel_visualiser/widgets/search_bar.dart';

final _offsetProvider = StateProvider<int>(((ref) => 0));

final _searchTextProvider = StateProvider<String>(((ref) => ''));

final _comicsProvider = FutureProvider<MarvelResponse?>(((ref) {
  final comicsRepository = ref.read(comicRepositoryProvider);
  final offset = ref.watch(_offsetProvider);
  final searchText = ref.watch(_searchTextProvider);
  return comicsRepository.getComics(query: searchText, offset: offset);
}));

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
          errorMessage = null;
          allComics.addAll(comics!.data!.results);
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
                  allComics = [];
                }
              })),
          Expanded(
            flex: 10,
            child: (errorMessage != null)
                ? ErrorView(message: errorMessage)
                : InfiniteGridListView<Result>(
                    allResults: allComics,
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
