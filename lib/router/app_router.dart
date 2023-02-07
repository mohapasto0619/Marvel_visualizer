import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marvel_visualiser/module/character_details/view.dart';
import 'package:marvel_visualiser/module/characters/view.dart';
import 'package:marvel_visualiser/module/comics/view.dart';
import 'package:marvel_visualiser/module/home/view.dart';
import 'package:marvel_visualiser/module/settings/view.dart';
import 'package:marvel_visualiser/router/app_router_names.dart';

class AppRouter {
  AppRouter() {
    shellRoute =
        setUpShellRoute(_shellNavigatorKey, setUpShellRouteSubRoutes());
    appRouter = GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: MarvelVisualizerRoutes.charactersRoute.path,
      debugLogDiagnostics: true,
      routes: [shellRoute],
      redirect: _redirectLogic,
    );
  }

  late final ShellRoute shellRoute;
  late final GoRouter appRouter;

  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  final _shellNavigatorKey = GlobalKey<NavigatorState>();

  Future<String?> _redirectLogic(
      BuildContext context, GoRouterState state) async {
    return null;
  }

  ShellRoute setUpShellRoute(
      GlobalKey<NavigatorState> key, List<GoRoute> routes) {
    return ShellRoute(
      navigatorKey: key,
      builder: ((context, state, child) {
        return ScaffoldWihtBottomBar(key: state.pageKey, child: child);
      }),
      routes: routes,
    );
  }

  List<GoRoute> setUpShellRouteSubRoutes() => [
        GoRoute(
            name: MarvelVisualizerRoutes.charactersRoute.name,
            builder: (context, state) => const CharactersView(),
            path: MarvelVisualizerRoutes.charactersRoute.path,
            routes: [
              GoRoute(
                name: MarvelVisualizerRoutes.characterDetailsRoute.name,
                builder: (context, state) {
                  final id = int.parse(state.params['id'].toString());
                  final comicsCollectionUri =
                      state.params['comicsCollectionUri'].toString();
                  final seriesCollectionUri =
                      state.params['seriesCollectionUri'].toString();
                  final eventsCollectionUri =
                      state.params['eventsCollectionUri'].toString();
                  return CharacterDetailsView(
                    id: id,
                    comicsCollectionUri: comicsCollectionUri,
                    seriesCollectionUri: seriesCollectionUri,
                    eventsCollectionUri: eventsCollectionUri,
                  );
                },
                path: MarvelVisualizerRoutes.characterDetailsRoute.path,
              ),
            ]),
        GoRoute(
            name: MarvelVisualizerRoutes.comicsRoute.name,
            builder: (context, state) => const ComicsView(),
            path: MarvelVisualizerRoutes.comicsRoute.path),
        GoRoute(
          name: MarvelVisualizerRoutes.settingsRoute.name,
          builder: (context, state) => const SettingsView(),
          path: MarvelVisualizerRoutes.settingsRoute.path,
        )
      ];
}
