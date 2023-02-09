import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/data/entity/comic/marvel_response.dart'
    as comic;
import 'package:marvel_visualiser/data/entity/event/marvel_response.dart'
    as event;
import 'package:marvel_visualiser/data/entity/character/marvel_response.dart'
    as character;
import 'package:marvel_visualiser/data/entity/character/result.dart'
    as character;
import 'package:marvel_visualiser/data/entity/creator/marvel_response.dart'
    as creator;
import 'package:marvel_visualiser/data/repository/character_repository.dart';
import 'package:marvel_visualiser/data/repository/comic_repository.dart';
import 'package:marvel_visualiser/data/repository/creator_repository.dart';
import 'package:marvel_visualiser/data/repository/event_repository.dart';
import 'package:marvel_visualiser/module/character_details/view.dart';
import 'package:marvel_visualiser/widgets/description_view.dart';
import 'package:marvel_visualiser/widgets/error_view.dart';
import 'package:marvel_visualiser/widgets/section_list_view.dart';

final _comicProvider =
    FutureProvider.family<comic.MarvelResponse?, int>(((ref, id) {
  final comicRepository = ref.read(comicRepositoryProvider);
  return comicRepository.getComic(id: id);
}));

final _eventsProvider =
    FutureProvider.family<event.MarvelResponse?, String>(((ref, collectionUri) {
  final eventRepository = ref.read(eventRepositoryProvider);
  return eventRepository.getEventsCollectionForCharacter(
      collectionUri: collectionUri);
}));

final _charactersrovider =
    FutureProvider.family<character.MarvelResponse?, String>(
        ((ref, collectionUri) {
  final characterRepository = ref.read(characterRepositoryProvider);
  return characterRepository.getCharactersCollectionForComic(
      collectionUri: collectionUri);
}));

final _creatorsProvider =
    FutureProvider.family<creator.MarvelResponse?, String>(
        ((ref, collectionUri) {
  final creatorRepository = ref.read(creatorRepositoryProvider);
  return creatorRepository.getCreatorCollectionForCharacter(
      collectionUri: collectionUri);
}));

class ComicDetailsView extends ConsumerWidget {
  const ComicDetailsView(
      {required this.eventsCollectionUri,
      required this.seriesCollectionUri,
      required this.comicsCollectionUri,
      required this.id,
      super.key});

  final int id;
  final String comicsCollectionUri;
  final String seriesCollectionUri;
  final String eventsCollectionUri;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final comicResponse = ref.watch(_comicProvider(id));
    return comicResponse.when(data: (data) {
      final comic = data?.data?.results.first;
      final title = comic?.title;
      final image = '${comic?.thumbnail?.path}.${comic?.thumbnail?.extension}';
      final description = comic?.description;
      return CustomScrollView(
        slivers: [
          DetailsViewHeader(title: title!, image: image),
          ComicDetailsViewBody(
            description: description!,
            firstCollectionUri: comicsCollectionUri,
            secondCollectionUri: seriesCollectionUri,
            thirdCollectionUri: eventsCollectionUri,
          ),
          //CharacterDetailsViewFooter(urls: comic!.urls!)
        ],
      );
    }, error: ((error, stackTrace) {
      return const ErrorView(
          message: 'An error Occured Can\'t load character details.');
    }), loading: (() {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }));
  }
}

class ComicDetailsViewBody extends StatelessWidget {
  const ComicDetailsViewBody(
      {super.key,
      required this.description,
      required this.firstCollectionUri,
      required this.secondCollectionUri,
      required this.thirdCollectionUri});

  final String firstCollectionUri;
  final String secondCollectionUri;
  final String thirdCollectionUri;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DescriptionView(description: description),
            SectionListView<List<character.Result>>(
                collectionUri: firstCollectionUri,
                sectionName: 'Characters',
                provider: _charactersrovider),
            SectionListView<List<creator.Result>>(
                collectionUri: secondCollectionUri,
                sectionName: 'Creators',
                provider: _creatorsProvider),
            SectionListView<List<event.Result>>(
                collectionUri: thirdCollectionUri,
                sectionName: 'Events',
                provider: _eventsProvider)
          ],
        ),
      ),
    );
  }
}
