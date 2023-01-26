// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoriesItem _$StoriesItemFromJson(Map<String, dynamic> json) {
  return _StoriesItem.fromJson(json);
}

/// @nodoc
mixin _$StoriesItem {
  String? get resourceUri => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoriesItemCopyWith<StoriesItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesItemCopyWith<$Res> {
  factory $StoriesItemCopyWith(
          StoriesItem value, $Res Function(StoriesItem) then) =
      _$StoriesItemCopyWithImpl<$Res, StoriesItem>;
  @useResult
  $Res call({String? resourceUri, String? name});
}

/// @nodoc
class _$StoriesItemCopyWithImpl<$Res, $Val extends StoriesItem>
    implements $StoriesItemCopyWith<$Res> {
  _$StoriesItemCopyWithImpl(this._value, this._then);

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
abstract class _$$_StoriesItemCopyWith<$Res>
    implements $StoriesItemCopyWith<$Res> {
  factory _$$_StoriesItemCopyWith(
          _$_StoriesItem value, $Res Function(_$_StoriesItem) then) =
      __$$_StoriesItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? resourceUri, String? name});
}

/// @nodoc
class __$$_StoriesItemCopyWithImpl<$Res>
    extends _$StoriesItemCopyWithImpl<$Res, _$_StoriesItem>
    implements _$$_StoriesItemCopyWith<$Res> {
  __$$_StoriesItemCopyWithImpl(
      _$_StoriesItem _value, $Res Function(_$_StoriesItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceUri = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_StoriesItem(
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
class _$_StoriesItem implements _StoriesItem {
  const _$_StoriesItem({this.resourceUri, this.name});

  factory _$_StoriesItem.fromJson(Map<String, dynamic> json) =>
      _$$_StoriesItemFromJson(json);

  @override
  final String? resourceUri;
  @override
  final String? name;

  @override
  String toString() {
    return 'StoriesItem(resourceUri: $resourceUri, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoriesItem &&
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
  _$$_StoriesItemCopyWith<_$_StoriesItem> get copyWith =>
      __$$_StoriesItemCopyWithImpl<_$_StoriesItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoriesItemToJson(
      this,
    );
  }
}

abstract class _StoriesItem implements StoriesItem {
  const factory _StoriesItem({final String? resourceUri, final String? name}) =
      _$_StoriesItem;

  factory _StoriesItem.fromJson(Map<String, dynamic> json) =
      _$_StoriesItem.fromJson;

  @override
  String? get resourceUri;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_StoriesItemCopyWith<_$_StoriesItem> get copyWith =>
      throw _privateConstructorUsedError;
}
