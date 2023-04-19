// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$_comicHash() => r'afdd37bfc0a70919eb2f4d7a5691566eea12eb4c';

/// See also [_comic].
class _ComicProvider extends AutoDisposeFutureProvider<ComicMarvelResponse?> {
  _ComicProvider(
    this.id,
  ) : super(
          (ref) => _comic(
            ref,
            id,
          ),
          from: _comicProvider,
          name: r'_comicProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$_comicHash,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is _ComicProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef _ComicRef = AutoDisposeFutureProviderRef<ComicMarvelResponse?>;

/// See also [_comic].
final _comicProvider = _ComicFamily();

class _ComicFamily extends Family<AsyncValue<ComicMarvelResponse?>> {
  _ComicFamily();

  _ComicProvider call(
    int id,
  ) {
    return _ComicProvider(
      id,
    );
  }

  @override
  AutoDisposeFutureProvider<ComicMarvelResponse?> getProviderOverride(
    covariant _ComicProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'_comicProvider';
}

String _$_eventsHash() => r'5363af53542a67244337488e0bbac3038a801d83';

/// See also [_events].
class _EventsProvider extends AutoDisposeFutureProvider<EventMarvelResponse?> {
  _EventsProvider(
    this.collectionUri,
  ) : super(
          (ref) => _events(
            ref,
            collectionUri,
          ),
          from: _eventsProvider,
          name: r'_eventsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$_eventsHash,
        );

  final String collectionUri;

  @override
  bool operator ==(Object other) {
    return other is _EventsProvider && other.collectionUri == collectionUri;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, collectionUri.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef _EventsRef = AutoDisposeFutureProviderRef<EventMarvelResponse?>;

/// See also [_events].
final _eventsProvider = _EventsFamily();

class _EventsFamily extends Family<AsyncValue<EventMarvelResponse?>> {
  _EventsFamily();

  _EventsProvider call(
    String collectionUri,
  ) {
    return _EventsProvider(
      collectionUri,
    );
  }

  @override
  AutoDisposeFutureProvider<EventMarvelResponse?> getProviderOverride(
    covariant _EventsProvider provider,
  ) {
    return call(
      provider.collectionUri,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'_eventsProvider';
}

String _$_charactersHash() => r'c4093218d86f7e48e7e0a939d525100dbc0f2ef4';

/// See also [_characters].
class _CharactersProvider
    extends AutoDisposeFutureProvider<CharacterMarvelResponse?> {
  _CharactersProvider(
    this.collectionUri,
  ) : super(
          (ref) => _characters(
            ref,
            collectionUri,
          ),
          from: _charactersProvider,
          name: r'_charactersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$_charactersHash,
        );

  final String collectionUri;

  @override
  bool operator ==(Object other) {
    return other is _CharactersProvider && other.collectionUri == collectionUri;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, collectionUri.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef _CharactersRef = AutoDisposeFutureProviderRef<CharacterMarvelResponse?>;

/// See also [_characters].
final _charactersProvider = _CharactersFamily();

class _CharactersFamily extends Family<AsyncValue<CharacterMarvelResponse?>> {
  _CharactersFamily();

  _CharactersProvider call(
    String collectionUri,
  ) {
    return _CharactersProvider(
      collectionUri,
    );
  }

  @override
  AutoDisposeFutureProvider<CharacterMarvelResponse?> getProviderOverride(
    covariant _CharactersProvider provider,
  ) {
    return call(
      provider.collectionUri,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'_charactersProvider';
}

String _$_creatorsHash() => r'c9e668fe0d8e7b2898cdce7f67f3a01b16f7803d';

/// See also [_creators].
class _CreatorsProvider
    extends AutoDisposeFutureProvider<CreatorMarvelResponse?> {
  _CreatorsProvider(
    this.collectionUri,
  ) : super(
          (ref) => _creators(
            ref,
            collectionUri,
          ),
          from: _creatorsProvider,
          name: r'_creatorsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$_creatorsHash,
        );

  final String collectionUri;

  @override
  bool operator ==(Object other) {
    return other is _CreatorsProvider && other.collectionUri == collectionUri;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, collectionUri.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef _CreatorsRef = AutoDisposeFutureProviderRef<CreatorMarvelResponse?>;

/// See also [_creators].
final _creatorsProvider = _CreatorsFamily();

class _CreatorsFamily extends Family<AsyncValue<CreatorMarvelResponse?>> {
  _CreatorsFamily();

  _CreatorsProvider call(
    String collectionUri,
  ) {
    return _CreatorsProvider(
      collectionUri,
    );
  }

  @override
  AutoDisposeFutureProvider<CreatorMarvelResponse?> getProviderOverride(
    covariant _CreatorsProvider provider,
  ) {
    return call(
      provider.collectionUri,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'_creatorsProvider';
}
