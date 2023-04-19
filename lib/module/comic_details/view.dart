import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/data/entity/character/marvel_response.dart';
import 'package:marvel_visualiser/data/entity/comic/marvel_response.dart';
import 'package:marvel_visualiser/data/entity/creator/marvel_response.dart';
import 'package:marvel_visualiser/data/entity/event/marvel_response.dart';
import 'package:marvel_visualiser/data/repository/character_repository.dart';
import 'package:marvel_visualiser/data/repository/comic_repository.dart';
import 'package:marvel_visualiser/data/repository/creator_repository.dart';
import 'package:marvel_visualiser/data/repository/event_repository.dart';
import 'package:marvel_visualiser/module/character_details/view.dart';
import 'package:marvel_visualiser/widgets/description_view.dart';
import 'package:marvel_visualiser/widgets/error_view.dart';
import 'package:marvel_visualiser/widgets/section_list_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view.g.dart';

@Riverpod(keepAlive: false)
Future<ComicMarvelResponse?> _comic(_ComicRef ref, int id) {
  final comicRepository = ref.watch(comicRepositoryProvider);
  return comicRepository.getComic(id: id);
}

@Riverpod(keepAlive: false)
Future<EventMarvelResponse?> _events(_EventsRef ref, String collectionUri) {
  final eventRepository = ref.watch(eventRepositoryProvider);
  return eventRepository.getEventsCollectionForCharacter(
      collectionUri: collectionUri);
}

@Riverpod(keepAlive: false)
Future<CharacterMarvelResponse?> _characters(
    _CharactersRef ref, String collectionUri) {
  final characterRepository = ref.read(characterRepositoryProvider);
  return characterRepository.getCharactersCollectionForComic(
      collectionUri: collectionUri);
}

@Riverpod(keepAlive: false)
Future<CreatorMarvelResponse?> _creators(
    _CreatorsRef ref, String collectionUri) {
  final creatorRepository = ref.read(creatorRepositoryProvider);
  return creatorRepository.getCreatorCollectionForCharacter(
      collectionUri: collectionUri);
}

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
            description: description ?? '',
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
            SectionListView(
                collectionUri: firstCollectionUri,
                sectionName: 'Characters',
                provider: _charactersProvider(firstCollectionUri)),
            SectionListView(
                collectionUri: secondCollectionUri,
                sectionName: 'Creators',
                provider: _creatorsProvider(secondCollectionUri)),
            SectionListView(
                collectionUri: thirdCollectionUri,
                sectionName: 'Events',
                provider: _eventsProvider(thirdCollectionUri))
          ],
        ),
      ),
    );
  }
}
