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

String _$OffsetHash() => r'75224690ae5bf9941685513b0fdeb6d3cdf8d067';

/// See also [Offset].
final offsetProvider = AutoDisposeNotifierProvider<Offset, int>(
  Offset.new,
  name: r'offsetProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$OffsetHash,
);
typedef OffsetRef = AutoDisposeNotifierProviderRef<int>;

abstract class _$Offset extends AutoDisposeNotifier<int> {
  @override
  int build();
}

String _$SearchTextHash() => r'd0839b6d63ad13e04d29623103635722088ee41e';

/// See also [SearchText].
final searchTextProvider = AutoDisposeNotifierProvider<SearchText, String>(
  SearchText.new,
  name: r'searchTextProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$SearchTextHash,
);
typedef SearchTextRef = AutoDisposeNotifierProviderRef<String>;

abstract class _$SearchText extends AutoDisposeNotifier<String> {
  @override
  String build();
}

String _$_charactersFetcherHash() =>
    r'926656922449a966d77612a8f9008baa8544e713';

/// See also [_charactersFetcher].
final _charactersFetcherProvider = AutoDisposeFutureProvider<MarvelResponse?>(
  _charactersFetcher,
  name: r'_charactersFetcherProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$_charactersFetcherHash,
);
typedef _CharactersFetcherRef = AutoDisposeFutureProviderRef<MarvelResponse?>;
