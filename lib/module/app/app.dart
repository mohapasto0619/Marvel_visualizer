import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/data/repository/character_repository.dart';
import 'package:marvel_visualiser/data/repository/comic_repository.dart';
import 'package:marvel_visualiser/data/repository/creator_repository.dart';
import 'package:marvel_visualiser/data/repository/event_repository.dart';
import 'package:marvel_visualiser/data/source/api_client.dart';
import 'package:marvel_visualiser/router/app_router.dart';

final appRouterProvider = Provider((ref) {
  final router = AppRouter();
  return router.appRouter;
});

final apiClientProvider = Provider(((ref) => ApiClient()));

final characterRepositoryProvider = Provider(((ref) {
  final apiClient = ref.read(apiClientProvider);
  return CharacterRepository(apiClient: apiClient);
}));

final comicRepositoryProvider = Provider(((ref) {
  final apiClient = ref.read(apiClientProvider);
  return ComicRepository(apiClient: apiClient);
}));

final eventRepositoryProvider = Provider(((ref) {
  final apiClient = ref.read(apiClientProvider);
  return EventRepository(apiClient: apiClient);
}));

final creatorRepositoryProvider = Provider(((ref) {
  final apiClient = ref.read(apiClientProvider);
  return CreatorRepository(apiClient: apiClient);
}));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    return MaterialApp.router(
      title: 'Marvel App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    );
  }
}
