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

String _$_characterHash() => r'2e4a8288a2293546f7b2e420473f8749e5de0449';

/// See also [_character].
class _CharacterProvider
    extends AutoDisposeFutureProvider<CharacterMarvelResponse?> {
  _CharacterProvider(
    this.id,
  ) : super(
          (ref) => _character(
            ref,
            id,
          ),
          from: _characterProvider,
          name: r'_characterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$_characterHash,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is _CharacterProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef _CharacterRef = AutoDisposeFutureProviderRef<CharacterMarvelResponse?>;

/// See also [_character].
final _characterProvider = _CharacterFamily();

class _CharacterFamily extends Family<AsyncValue<CharacterMarvelResponse?>> {
  _CharacterFamily();

  _CharacterProvider call(
    int id,
  ) {
    return _CharacterProvider(
      id,
    );
  }

  @override
  AutoDisposeFutureProvider<CharacterMarvelResponse?> getProviderOverride(
    covariant _CharacterProvider provider,
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
  String? get name => r'_characterProvider';
}

String _$_comicsHash() => r'42a7b1ae4cacd2bc0c43fef090422cbbed9d7233';

/// See also [_comics].
class _ComicsProvider extends AutoDisposeFutureProvider<ComicMarvelResponse?> {
  _ComicsProvider(
    this.collectionUri,
  ) : super(
          (ref) => _comics(
            ref,
            collectionUri,
          ),
          from: _comicsProvider,
          name: r'_comicsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$_comicsHash,
        );

  final String collectionUri;

  @override
  bool operator ==(Object other) {
    return other is _ComicsProvider && other.collectionUri == collectionUri;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, collectionUri.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef _ComicsRef = AutoDisposeFutureProviderRef<ComicMarvelResponse?>;

/// See also [_comics].
final _comicsProvider = _ComicsFamily();

class _ComicsFamily extends Family<AsyncValue<ComicMarvelResponse?>> {
  _ComicsFamily();

  _ComicsProvider call(
    String collectionUri,
  ) {
    return _ComicsProvider(
      collectionUri,
    );
  }

  @override
  AutoDisposeFutureProvider<ComicMarvelResponse?> getProviderOverride(
    covariant _ComicsProvider provider,
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
  String? get name => r'_comicsProvider';
}

String _$_seriesHash() => r'0288a645b03db14d7f0303a03a01a104b3e3c9aa';

/// See also [_series].
class _SeriesProvider extends AutoDisposeFutureProvider<SerieMarvelResponse?> {
  _SeriesProvider(
    this.collectionUri,
  ) : super(
          (ref) => _series(
            ref,
            collectionUri,
          ),
          from: _seriesProvider,
          name: r'_seriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$_seriesHash,
        );

  final String collectionUri;

  @override
  bool operator ==(Object other) {
    return other is _SeriesProvider && other.collectionUri == collectionUri;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, collectionUri.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef _SeriesRef = AutoDisposeFutureProviderRef<SerieMarvelResponse?>;

/// See also [_series].
final _seriesProvider = _SeriesFamily();

class _SeriesFamily extends Family<AsyncValue<SerieMarvelResponse?>> {
  _SeriesFamily();

  _SeriesProvider call(
    String collectionUri,
  ) {
    return _SeriesProvider(
      collectionUri,
    );
  }

  @override
  AutoDisposeFutureProvider<SerieMarvelResponse?> getProviderOverride(
    covariant _SeriesProvider provider,
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
  String? get name => r'_seriesProvider';
}

String _$_eventsHash() => r'442b8ebe49b7a16ec9f310d92e71c80d933bf9cc';

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
