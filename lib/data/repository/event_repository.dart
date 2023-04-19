import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_visualiser/data/entity/event/marvel_response.dart'
    as event;
import 'package:marvel_visualiser/data/source/api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_repository.g.dart';

@Riverpod(keepAlive: true)
EventRepository eventRepository(EventRepositoryRef ref) {
  final apiClient = ref.read(apiClientProvider);
  return EventRepository(apiClient: apiClient);
}

class EventRepository {
  const EventRepository({required ApiClient apiClient})
      : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<event.EventMarvelResponse?> getEventsCollectionForCharacter(
          {required String collectionUri}) =>
      _apiClient.getEventsCollectionForCharacter(collectionUri: collectionUri);
}
