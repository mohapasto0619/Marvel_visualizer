import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/data/entity/character/marvel_response.dart';
import 'package:marvel_visualiser/data/source/api_client.dart';

final characterRepositoryProvider = Provider(((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return CharacterRepository(apiClient: apiClient);
}));

class CharacterRepository {
  const CharacterRepository({required ApiClient apiClient})
      : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<MarvelResponse?> getCharacters({String query = '', int offset = 0}) =>
      _apiClient.getCharacters(query: query, offset: offset);

  Future<MarvelResponse?> getCharacter({required int id}) =>
      _apiClient.getCharacter(id: id);

  Future<MarvelResponse?> getCharactersCollectionForComic(
          {required String collectionUri}) =>
      _apiClient.getcharactersCollectionForComic(collectionUri: collectionUri);
}
