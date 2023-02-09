import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/widgets/infinite_scroll_view.dart';
import 'package:marvel_visualiser/data/entity/comic/marvel_response.dart'
    as comic;
import 'package:marvel_visualiser/data/entity/character/result.dart'
    as character;
import 'package:marvel_visualiser/widgets/marvel_card_view.dart';

class InfiniteGridListView<T> extends ConsumerStatefulWidget {
  const InfiniteGridListView(
      {required this.onTap,
      required this.scrollController,
      required this.onMaxScrollFunction,
      super.key,
      required this.allResults,
      required this.isLoading});
  final List<T> allResults;
  final bool isLoading;
  final Function onMaxScrollFunction;
  final Function onTap;
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
                      widget.onTap(id, comicsCollectionUri, seriesCollectionUri,
                          eventsCollectionUri);
                    });
              } else if (result is comic.Result) {
                final int? id = result.id;
                final String title = result.title!;
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
                      widget.onTap(id, charactersCollectionUri,
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
}
