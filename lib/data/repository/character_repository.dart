import 'package:marvel_visualiser/data/entity/marvel_response.dart';
import 'package:marvel_visualiser/data/source/api_client.dart';

class CharacterRepository {
  const CharacterRepository({required ApiClient apiClient})
      : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<MarvelResponse?> getCharacters({String query = '', int offset = 0}) =>
      _apiClient.getCharacters(query: query, offset: offset);
}
