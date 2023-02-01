import 'package:marvel_visualiser/data/entity/event/marvel_response.dart'
    as event;
import 'package:marvel_visualiser/data/source/api_client.dart';

class EventRepository {
  const EventRepository({required ApiClient apiClient})
      : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<event.MarvelResponse?> getEventsCollectionForCharacter(
          {required String collectionUri}) =>
      _apiClient.getEventsCollectionForCharacter(collectionUri: collectionUri);
}
