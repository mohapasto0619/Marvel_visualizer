import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/widgets/marvel_card_view.dart';
import 'package:marvel_visualiser/data/entity/character/result.dart'
    as character;
import 'package:marvel_visualiser/data/entity/creator/marvel_response.dart'
    as creator;

class SectionInfiniteListView<T extends List> extends ConsumerWidget {
  const SectionInfiniteListView(
      {required this.results, required this.collectionUri, super.key});

  final String collectionUri;
  final T results;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(right: 100),
        itemBuilder: ((context, index) {
          final result = results[index];
          late final String title;
          final image =
              '${result.thumbnail?.path}.${result.thumbnail?.extension}';
          if (result is character.Result) {
            title = result.name!;
          } else if (result is creator.Result) {
            title = '${result.firstName} ${result.lastName}';
          } else {
            title = result.title;
          }
          return AspectRatio(
            aspectRatio: 2 / 3,
            child: MarvelCardView(
              title: title,
              image: image,
              onTap: () {},
            ),
          );
        }),
        itemCount: results?.length,
      ),
    );
  }
}
