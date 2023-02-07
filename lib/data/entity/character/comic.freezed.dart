// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comics _$ComicsFromJson(Map<String, dynamic> json) {
  return _Comics.fromJson(json);
}

/// @nodoc
mixin _$Comics {
  int? get available => throw _privateConstructorUsedError;
  @JsonKey(name: 'collectionURI')
  String? get collectionUri => throw _privateConstructorUsedError;
  List<ComicsItem?>? get items => throw _privateConstructorUsedError;
  int? get returned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicsCopyWith<Comics> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsCopyWith<$Res> {
  factory $ComicsCopyWith(Comics value, $Res Function(Comics) then) =
      _$ComicsCopyWithImpl<$Res, Comics>;
  @useResult
  $Res call(
      {int? available,
      @JsonKey(name: 'collectionURI') String? collectionUri,
      List<ComicsItem?>? items,
      int? returned});
}

/// @nodoc
class _$ComicsCopyWithImpl<$Res, $Val extends Comics>
    implements $ComicsCopyWith<$Res> {
  _$ComicsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? collectionUri = freezed,
    Object? items = freezed,
    Object? returned = freezed,
  }) {
    return _then(_value.copyWith(
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int?,
      collectionUri: freezed == collectionUri
          ? _value.collectionUri
          : collectionUri // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ComicsItem?>?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComicsCopyWith<$Res> implements $ComicsCopyWith<$Res> {
  factory _$$_ComicsCopyWith(_$_Comics value, $Res Function(_$_Comics) then) =
      __$$_ComicsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? available,
      @JsonKey(name: 'collectionURI') String? collectionUri,
      List<ComicsItem?>? items,
      int? returned});
}

/// @nodoc
class __$$_ComicsCopyWithImpl<$Res>
    extends _$ComicsCopyWithImpl<$Res, _$_Comics>
    implements _$$_ComicsCopyWith<$Res> {
  __$$_ComicsCopyWithImpl(_$_Comics _value, $Res Function(_$_Comics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? collectionUri = freezed,
    Object? items = freezed,
    Object? returned = freezed,
  }) {
    return _then(_$_Comics(
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int?,
      collectionUri: freezed == collectionUri
          ? _value.collectionUri
          : collectionUri // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ComicsItem?>?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comics implements _Comics {
  const _$_Comics(
      {this.available,
      @JsonKey(name: 'collectionURI') this.collectionUri,
      final List<ComicsItem?>? items,
      this.returned})
      : _items = items;

  factory _$_Comics.fromJson(Map<String, dynamic> json) =>
      _$$_ComicsFromJson(json);

  @override
  final int? available;
  @override
  @JsonKey(name: 'collectionURI')
  final String? collectionUri;
  final List<ComicsItem?>? _items;
  @override
  List<ComicsItem?>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? returned;

  @override
  String toString() {
    return 'Comics(available: $available, collectionUri: $collectionUri, items: $items, returned: $returned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comics &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.collectionUri, collectionUri) ||
                other.collectionUri == collectionUri) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.returned, returned) ||
                other.returned == returned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, available, collectionUri,
      const DeepCollectionEquality().hash(_items), returned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicsCopyWith<_$_Comics> get copyWith =>
      __$$_ComicsCopyWithImpl<_$_Comics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicsToJson(
      this,
    );
  }
}

abstract class _Comics implements Comics {
  const factory _Comics(
      {final int? available,
      @JsonKey(name: 'collectionURI') final String? collectionUri,
      final List<ComicsItem?>? items,
      final int? returned}) = _$_Comics;

  factory _Comics.fromJson(Map<String, dynamic> json) = _$_Comics.fromJson;

  @override
  int? get available;
  @override
  @JsonKey(name: 'collectionURI')
  String? get collectionUri;
  @override
  List<ComicsItem?>? get items;
  @override
  int? get returned;
  @override
  @JsonKey(ignore: true)
  _$$_ComicsCopyWith<_$_Comics> get copyWith =>
      throw _privateConstructorUsedError;
}
