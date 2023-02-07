import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/data/entity/character/marvel_response.dart'
    as character;
import 'package:marvel_visualiser/data/entity/character/url.dart';
import 'package:marvel_visualiser/data/entity/comic/marvel_response.dart'
    as comic;
import 'package:marvel_visualiser/data/entity/serie/marvel_response.dart'
    as serie;
import 'package:marvel_visualiser/data/entity/event/marvel_response.dart'
    as event;
import 'package:marvel_visualiser/module/app/app.dart';
import 'package:marvel_visualiser/module/characters/view.dart';
import 'package:url_launcher/url_launcher.dart';

final _characterProvider =
    FutureProvider.family<character.MarvelResponse?, int>(((ref, id) {
  final characterRepository = ref.read(characterRepositoryProvider);
  return characterRepository.getCharacter(id: id);
}));

final _comicsProvider =
    FutureProvider.family<comic.MarvelResponse?, String>(((ref, collectionUri) {
  final comicRepository = ref.read(comicRepositoryProvider);
  return comicRepository.getComicsCollectionForCharacter(
      collectionUri: collectionUri);
}));

final _seriesProvider =
    FutureProvider.family<serie.MarvelResponse?, String>(((ref, collectionUri) {
  final comicRepository = ref.read(comicRepositoryProvider);
  return comicRepository.getSeriesCollectionForCharacter(
      collectionUri: collectionUri);
}));

final _eventsProvider =
    FutureProvider.family<event.MarvelResponse?, String>(((ref, collectionUri) {
  final eventRepository = ref.read(eventRepositoryProvider);
  return eventRepository.getEventsCollectionForCharacter(
      collectionUri: collectionUri);
}));

class CharacterDetailsView extends ConsumerWidget {
  const CharacterDetailsView(
      {this.eventsCollectionUri =
          'http://gateway.marvel.com/v1/public/characters/1011334/events',
      this.seriesCollectionUri =
          'http://gateway.marvel.com/v1/public/characters/1011334/series',
      this.comicsCollectionUri =
          'http://gateway.marvel.com/v1/public/characters/1011334/comics',
      this.id = 1009146,
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
          DetailsViewBody(
            description: description!,
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

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody(
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
            SectionListView<List<comic.Result>>(
                collectionUri: firstCollectionUri,
                sectionName: 'Comics',
                provider: _comicsProvider),
            SeriesListView(collectionUri: secondCollectionUri),
            EventListView(collectionUri: thirdCollectionUri)
          ],
        ),
      ),
    );
  }
}

class DescriptionView extends StatelessWidget {
  const DescriptionView({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: const Color.fromARGB(209, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Description ',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              description,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionListView<T extends List> extends ConsumerWidget {
  const SectionListView(
      {required this.provider,
      required this.sectionName,
      super.key,
      required this.collectionUri});

  final String collectionUri;
  final String sectionName;
  final FutureProviderFamily<dynamic, String> provider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final comicResponse = ref.watch(_comicsProvider(collectionUri));
    return comicResponse.when(data: ((data) {
      final comics = data?.data?.results;

      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: const Color.fromARGB(209, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  sectionName,
                  style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              SectionInfiniteListView<T>(
                collectionUri: collectionUri,
                results: comics as T,
              )
            ],
          ),
        ),
      );
    }), error: ((error, stackTrace) {
      return const ErrorView(message: 'An error occured can\'t load comics.');
    }), loading: (() {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }));
  }
}

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
          return AspectRatio(
            aspectRatio: 2 / 3,
            child: MarvelCardView(
              title: results[index].title!,
              image:
                  '${results[index].thumbnail?.path}.${results[index].thumbnail?.extension}',
              onTap: () {},
            ),
          );
        }),
        itemCount: results?.length,
      ),
    );
  }
}

class SeriesListView extends ConsumerWidget {
  const SeriesListView({super.key, required this.collectionUri});

  final String collectionUri;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seriesResponse = ref.watch(_seriesProvider(collectionUri));
    return seriesResponse.when(data: ((data) {
      final series = data?.data?.results;

      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: const Color.fromARGB(209, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Series',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              SeriesInfiniteListView(
                collectionUri: collectionUri,
                results: series!,
              )
            ],
          ),
        ),
      );
    }), error: ((error, stackTrace) {
      return const ErrorView(message: 'An error occured can\'t load comics.');
    }), loading: (() {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }));
  }
}

class SeriesInfiniteListView extends ConsumerWidget {
  const SeriesInfiniteListView(
      {required this.results, required this.collectionUri, super.key});

  final String collectionUri;
  final List<serie.Result> results;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(right: 100),
        itemBuilder: ((context, index) {
          return AspectRatio(
            aspectRatio: 2 / 3,
            child: MarvelCardView(
              title: results[index].title!,
              image:
                  '${results[index].thumbnail?.path}.${results[index].thumbnail?.extension}',
              onTap: () {},
            ),
          );
        }),
        itemCount: results?.length,
      ),
    );
  }
}

class EventListView extends ConsumerWidget {
  const EventListView({super.key, required this.collectionUri});

  final String collectionUri;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventResponse = ref.watch(_eventsProvider(collectionUri));
    return eventResponse.when(data: ((data) {
      final events = data?.data?.results;

      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: const Color.fromARGB(209, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Events',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              EventsInfiniteListView(
                collectionUri: collectionUri,
                results: events!,
              )
            ],
          ),
        ),
      );
    }), error: ((error, stackTrace) {
      return const ErrorView(message: 'An error occured can\'t load comics.');
    }), loading: (() {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }));
  }
}

class EventsInfiniteListView extends ConsumerWidget {
  const EventsInfiniteListView(
      {required this.results, required this.collectionUri, super.key});

  final String collectionUri;
  final List<event.Result> results;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(right: 100),
        itemBuilder: ((context, index) {
          return AspectRatio(
            aspectRatio: 2 / 3,
            child: MarvelCardView(
              title: results[index].title!,
              image:
                  '${results[index].thumbnail?.path}.${results[index].thumbnail?.extension}',
              onTap: () {},
            ),
          );
        }),
        itemCount: results?.length,
      ),
    );
  }
}

class CharacterDetailsViewFooter extends StatelessWidget {
  const CharacterDetailsViewFooter({super.key, required this.urls});

  final List<Url> urls;

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

class FooterElementView extends StatelessWidget {
  const FooterElementView({super.key, required this.title, required this.url});
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Icon(Icons.info, color: Color.fromARGB(228, 255, 255, 255)),
            const SizedBox(width: 5),
            InkWell(
              onTap: () {
                launchUrl(Uri.parse(url));
              },
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(219, 255, 255, 255)),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
