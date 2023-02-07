import 'package:marvel_visualiser/data/entity/creator/marvel_response.dart';
import 'package:marvel_visualiser/data/source/api_client.dart';

class CreatorRepository {
  const CreatorRepository({required ApiClient apiClient})
      : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<MarvelResponse?> getCreatorCollectionForCharacter(
          {required String collectionUri}) =>
      _apiClient.getcreatorCollectionForComic(collectionUri: collectionUri);
}
