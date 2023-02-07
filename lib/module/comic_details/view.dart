import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/data/entity/comic/marvel_response.dart'
    as comic;
import 'package:marvel_visualiser/data/entity/event/marvel_response.dart'
    as event;
import 'package:marvel_visualiser/data/entity/character/marvel_response.dart'
    as character;
import 'package:marvel_visualiser/data/entity/creator/marvel_response.dart'
    as creator;
import 'package:marvel_visualiser/module/app/app.dart';
import 'package:marvel_visualiser/module/character_details/view.dart';
import 'package:marvel_visualiser/module/characters/view.dart';

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
          DetailsViewBody(
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
