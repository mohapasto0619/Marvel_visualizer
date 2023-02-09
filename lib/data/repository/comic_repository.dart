import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/data/entity/comic/marvel_response.dart'
    as comic;
import 'package:marvel_visualiser/data/entity/serie/marvel_response.dart'
    as serie;
import 'package:marvel_visualiser/data/source/api_client.dart';

final comicRepositoryProvider = Provider(((ref) {
  final apiClient = ref.read(apiClientProvider);
  return ComicRepository(apiClient: apiClient);
}));

class ComicRepository {
  const ComicRepository({required ApiClient apiClient})
      : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<comic.MarvelResponse?> getComics(
          {String query = '', int offset = 0}) =>
      _apiClient.getComics(query: query, offset: offset);

  Future<comic.MarvelResponse?> getComic({required int id}) =>
      _apiClient.getComic(id: id);

  Future<comic.MarvelResponse?> getComicsCollectionForCharacter(
          {required String collectionUri}) =>
      _apiClient.getComicsCollectionForCharacter(collectionUri: collectionUri);

  Future<serie.MarvelResponse?> getSeriesCollectionForCharacter(
          {required String collectionUri}) =>
      _apiClient.getSeriesCollectionForCharacter(collectionUri: collectionUri);
}
