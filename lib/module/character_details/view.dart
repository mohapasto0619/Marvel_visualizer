import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/data/entity/character/marvel_response.dart';
import 'package:marvel_visualiser/data/entity/comic/marvel_response.dart';
import 'package:marvel_visualiser/data/entity/event/marvel_response.dart';
import 'package:marvel_visualiser/data/entity/serie/marvel_response.dart';
import 'package:marvel_visualiser/data/repository/character_repository.dart';
import 'package:marvel_visualiser/data/repository/comic_repository.dart';
import 'package:marvel_visualiser/data/repository/event_repository.dart';
import 'package:marvel_visualiser/widgets/description_view.dart';
import 'package:marvel_visualiser/widgets/error_view.dart';
import 'package:marvel_visualiser/widgets/footer_element_view.dart';
import 'package:marvel_visualiser/widgets/section_list_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:marvel_visualiser/data/entity/character/url.dart' as character;

part 'view.g.dart';

@Riverpod(keepAlive: false)
Future<CharacterMarvelResponse?> _character(_CharacterRef ref, int id) {
  final characterRepository = ref.read(characterRepositoryProvider);
  return characterRepository.getCharacter(id: id);
}

@Riverpod(keepAlive: false)
Future<ComicMarvelResponse?> _comics(_ComicsRef ref, String collectionUri) {
  final comicRepository = ref.read(comicRepositoryProvider);
  return comicRepository.getComicsCollectionForCharacter(
    collectionUri: collectionUri,
  );
}

@Riverpod(keepAlive: false)
Future<SerieMarvelResponse?> _series(_SeriesRef ref, String collectionUri) {
  final comicRepository = ref.read(comicRepositoryProvider);
  return comicRepository.getSeriesCollectionForCharacter(
    collectionUri: collectionUri,
  );
}

@Riverpod(keepAlive: false)
Future<EventMarvelResponse?> _events(_EventsRef ref, String collectionUri) {
  final eventRepository = ref.read(eventRepositoryProvider);
  return eventRepository.getEventsCollectionForCharacter(
    collectionUri: collectionUri,
  );
}

class CharacterDetailsView extends ConsumerWidget {
  const CharacterDetailsView(
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
    final characterResponse = ref.watch(_characterProvider(id));
    return characterResponse.when(data: (data) {
      final character = data?.data?.results.first;
      final title = character?.name;
      final image =
          '${character?.thumbnail?.path}.${character?.thumbnail?.extension}';
      final description = character?.description;
      return CustomScrollView(
        slivers: [
          DetailsViewHeader(title: title!, image: image),
          CharacterDetailsViewBody(
            description: description ?? '',
            firstCollectionUri: comicsCollectionUri,
            secondCollectionUri: seriesCollectionUri,
            thirdCollectionUri: eventsCollectionUri,
          ),
          CharacterDetailsViewFooter(urls: character!.urls!)
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

class DetailsViewHeader extends StatelessWidget {
  const DetailsViewHeader(
      {super.key, required this.title, required this.image});

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      expandedHeight: 250,
      flexibleSpace: FlexibleSpaceBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title),
        ),
        background: Image.network(
          image,
          fit: BoxFit.cover,
          color: Colors.black54,
          colorBlendMode: BlendMode.darken,
        ),
      ),
    );
  }
}

class CharacterDetailsViewBody extends StatelessWidget {
  const CharacterDetailsViewBody(
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
                sectionName: 'Comics',
                provider: _comicsProvider(firstCollectionUri)),
            SectionListView(
                collectionUri: secondCollectionUri,
                sectionName: 'Series',
                provider: _seriesProvider(secondCollectionUri)),
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

class CharacterDetailsViewFooter extends StatelessWidget {
  const CharacterDetailsViewFooter({super.key, required this.urls});

  final List<character.Url> urls;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: const Color.fromARGB(209, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Links',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (var url in urls)
                    FooterElementView(title: url.type!, url: url.url!)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
