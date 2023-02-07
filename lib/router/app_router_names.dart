import 'package:marvel_visualiser/router/marvel_visualizer_route.dart';

class MarvelVisualizerRoutes {
  static const MarvelRoute charactersRoute =
      MarvelRoute(name: 'characters', path: '/characters');
  static const MarvelRoute comicsRoute =
      MarvelRoute(name: 'comics', path: '/comics');
  static const MarvelRoute settingsRoute =
      MarvelRoute(name: 'settings', path: '/settings');
  static const MarvelRoute characterDetailsRoute = MarvelRoute(
      name: 'character_details',
      path:
          'character/:id/:comicsCollectionUri/:seriesCollectionUri/:eventsCollectionUri');
  static const MarvelRoute comicDetailsRoute = MarvelRoute(
      name: 'comic_details',
      path:
          'comic/:id/:charactersCollectionUri/:seriesCollectionUri/:eventsCollectionUri');
}
