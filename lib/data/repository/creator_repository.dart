import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/data/entity/creator/marvel_response.dart';
import 'package:marvel_visualiser/data/source/api_client.dart';

final creatorRepositoryProvider = Provider(((ref) {
  final apiClient = ref.read(apiClientProvider);
  return CreatorRepository(apiClient: apiClient);
}));

class CreatorRepository {
  const CreatorRepository({required ApiClient apiClient})
      : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<MarvelResponse?> getCreatorCollectionForCharacter(
          {required String collectionUri}) =>
      _apiClient.getcreatorCollectionForComic(collectionUri: collectionUri);
}
