import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:marvel_visualiser/module/character_details/view.dart';
import 'package:marvel_visualiser/module/characters/view.dart';
import 'package:marvel_visualiser/module/comic_details/view.dart';
import 'package:marvel_visualiser/module/comics/view.dart';
import 'package:marvel_visualiser/module/home/view.dart';
import 'package:marvel_visualiser/module/settings/view.dart';
import 'package:marvel_visualiser/router/app_router_names.dart';

final appRouterProvider = Provider((ref) {
  final router = AppRouter();
  return router.appRouter;
});

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
            pageBuilder: (context, state) => CustomTransitionPage(
                  child: const CharactersView(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInOutCirc)
                          .animate(animation),
                      child: child,
                    );
                  },
                ),
            path: MarvelVisualizerRoutes.charactersRoute.path,
            routes: [
              GoRoute(
                name: MarvelVisualizerRoutes.characterDetailsRoute.name,
                pageBuilder: (context, state) {
                  final id = int.parse(state.params['id'].toString());
                  final comicsCollectionUri =
                      state.params['comicsCollectionUri'].toString();
                  final seriesCollectionUri =
                      state.params['seriesCollectionUri'].toString();
                  final eventsCollectionUri =
                      state.params['eventsCollectionUri'].toString();
                  return CustomTransitionPage(
                    child: CharacterDetailsView(
                      id: id,
                      comicsCollectionUri: comicsCollectionUri,
                      seriesCollectionUri: seriesCollectionUri,
                      eventsCollectionUri: eventsCollectionUri,
                    ),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: CurveTween(curve: Curves.easeInOutCirc)
                            .animate(animation),
                        child: child,
                      );
                    },
                  );
                },
                path: MarvelVisualizerRoutes.characterDetailsRoute.path,
              ),
            ]),
        GoRoute(
            name: MarvelVisualizerRoutes.comicsRoute.name,
            pageBuilder: (context, state) => CustomTransitionPage(
                  child: const ComicsView(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInOutCirc)
                          .animate(animation),
                      child: child,
                    );
                  },
                ),
            path: MarvelVisualizerRoutes.comicsRoute.path,
            routes: [
              GoRoute(
                name: MarvelVisualizerRoutes.comicDetailsRoute.name,
                pageBuilder: (context, state) {
                  final id = int.parse(state.params['id'].toString());
                  final charactersCollectionUri =
                      state.params['charactersCollectionUri'].toString();
                  final creatorsCollectionUri =
                      state.params['creatorsCollectionUri'].toString();
                  final eventsCollectionUri =
                      state.params['eventsCollectionUri'].toString();
                  return CustomTransitionPage(
                    child: ComicDetailsView(
                      id: id,
                      comicsCollectionUri: charactersCollectionUri,
                      seriesCollectionUri: creatorsCollectionUri,
                      eventsCollectionUri: eventsCollectionUri,
                    ),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: CurveTween(curve: Curves.easeInOutCirc)
                            .animate(animation),
                        child: child,
                      );
                    },
                  );
                },
                path: MarvelVisualizerRoutes.comicDetailsRoute.path,
              ),
            ]),
        GoRoute(
          name: MarvelVisualizerRoutes.settingsRoute.name,
          builder: (context, state) => const SettingsView(),
          path: MarvelVisualizerRoutes.settingsRoute.path,
        )
      ];
}
