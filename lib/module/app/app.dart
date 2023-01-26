import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/data/repository/character_repository.dart';
import 'package:marvel_visualiser/data/source/api_client.dart';
import 'package:marvel_visualiser/module/characters/view.dart';

final apiClientProvider = Provider(((ref) => ApiClient()));

final characterRepositoryProvider = Provider(((ref) {
  final apiClient = ref.read(apiClientProvider);
  return CharacterRepository(apiClient: apiClient);
}));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marvel App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const CharactersView(title: 'Marvel'),
    );
  }
}
