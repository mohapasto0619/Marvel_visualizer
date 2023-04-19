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

String _$_OffsetHash() => r'412b87192190dd1f9666bf6951a690f8e145d83f';

/// See also [_Offset].
final _offsetProvider = AutoDisposeNotifierProvider<_Offset, int>(
  _Offset.new,
  name: r'_offsetProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$_OffsetHash,
);
typedef _OffsetRef = AutoDisposeNotifierProviderRef<int>;

abstract class _$Offset extends AutoDisposeNotifier<int> {
  @override
  int build();
}

String _$_SearchTextHash() => r'531d576b73c8684d33fa4e123eb0315a84a67d71';

/// See also [_SearchText].
final _searchTextProvider = AutoDisposeNotifierProvider<_SearchText, String>(
  _SearchText.new,
  name: r'_searchTextProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$_SearchTextHash,
);
typedef _SearchTextRef = AutoDisposeNotifierProviderRef<String>;

abstract class _$SearchText extends AutoDisposeNotifier<String> {
  @override
  String build();
}

String _$_comicsHash() => r'8f6fcef3486f1469e04f00542cc21897bb8323b3';

/// See also [_comics].
final _comicsProvider = AutoDisposeFutureProvider<ComicMarvelResponse?>(
  _comics,
  name: r'_comicsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$_comicsHash,
);
typedef _ComicsRef = AutoDisposeFutureProviderRef<ComicMarvelResponse?>;
