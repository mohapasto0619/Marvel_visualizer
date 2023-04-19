import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/data/entity/creator/marvel_response.dart';
import 'package:marvel_visualiser/data/source/api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'creator_repository.g.dart';

@Riverpod(keepAlive: true)
CreatorRepository creatorRepository(CreatorRepositoryRef ref) {
  final apiClient = ref.read(apiClientProvider);
  return CreatorRepository(apiClient: apiClient);
}

class CreatorRepository {
  const CreatorRepository({required ApiClient apiClient})
      : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<CreatorMarvelResponse?> getCreatorCollectionForCharacter(
          {required String collectionUri}) =>
      _apiClient.getcreatorCollectionForComic(collectionUri: collectionUri);
}
