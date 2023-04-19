import 'package:marvel_visualiser/data/entity/character/marvel_response.dart';
import 'package:marvel_visualiser/data/source/api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'character_repository.g.dart';

@Riverpod(keepAlive: true)
CharacterRepository characterRepository(CharacterRepositoryRef ref) {
  final apiClient = ref.read(apiClientProvider);
  return CharacterRepository(apiClient: apiClient);
}

class CharacterRepository {
  const CharacterRepository({required ApiClient apiClient})
      : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<CharacterMarvelResponse?> getCharacters(
          {String query = '', int offset = 0}) =>
      _apiClient.getCharacters(query: query, offset: offset);

  Future<CharacterMarvelResponse?> getCharacter({required int id}) =>
      _apiClient.getCharacter(id: id);

  Future<CharacterMarvelResponse?> getCharactersCollectionForComic(
          {required String collectionUri}) =>
      _apiClient.getcharactersCollectionForComic(collectionUri: collectionUri);
}
