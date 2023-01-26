// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comics_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicsItem _$ComicsItemFromJson(Map<String, dynamic> json) {
  return _ComicsItem.fromJson(json);
}

/// @nodoc
mixin _$ComicsItem {
  String? get resourceUri => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicsItemCopyWith<ComicsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsItemCopyWith<$Res> {
  factory $ComicsItemCopyWith(
          ComicsItem value, $Res Function(ComicsItem) then) =
      _$ComicsItemCopyWithImpl<$Res, ComicsItem>;
  @useResult
  $Res call({String? resourceUri, String? name});
}

/// @nodoc
class _$ComicsItemCopyWithImpl<$Res, $Val extends ComicsItem>
    implements $ComicsItemCopyWith<$Res> {
  _$ComicsItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceUri = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      resourceUri: freezed == resourceUri
          ? _value.resourceUri
          : resourceUri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComicsItemCopyWith<$Res>
    implements $ComicsItemCopyWith<$Res> {
  factory _$$_ComicsItemCopyWith(
          _$_ComicsItem value, $Res Function(_$_ComicsItem) then) =
      __$$_ComicsItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? resourceUri, String? name});
}

/// @nodoc
class __$$_ComicsItemCopyWithImpl<$Res>
    extends _$ComicsItemCopyWithImpl<$Res, _$_ComicsItem>
    implements _$$_ComicsItemCopyWith<$Res> {
  __$$_ComicsItemCopyWithImpl(
      _$_ComicsItem _value, $Res Function(_$_ComicsItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceUri = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ComicsItem(
      resourceUri: freezed == resourceUri
          ? _value.resourceUri
          : resourceUri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComicsItem implements _ComicsItem {
  const _$_ComicsItem({this.resourceUri, this.name});

  factory _$_ComicsItem.fromJson(Map<String, dynamic> json) =>
      _$$_ComicsItemFromJson(json);

  @override
  final String? resourceUri;
  @override
  final String? name;

  @override
  String toString() {
    return 'ComicsItem(resourceUri: $resourceUri, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicsItem &&
            (identical(other.resourceUri, resourceUri) ||
                other.resourceUri == resourceUri) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resourceUri, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicsItemCopyWith<_$_ComicsItem> get copyWith =>
      __$$_ComicsItemCopyWithImpl<_$_ComicsItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicsItemToJson(
      this,
    );
  }
}

abstract class _ComicsItem implements ComicsItem {
  const factory _ComicsItem({final String? resourceUri, final String? name}) =
      _$_ComicsItem;

  factory _ComicsItem.fromJson(Map<String, dynamic> json) =
      _$_ComicsItem.fromJson;

  @override
  String? get resourceUri;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_ComicsItemCopyWith<_$_ComicsItem> get copyWith =>
      throw _privateConstructorUsedError;
}
