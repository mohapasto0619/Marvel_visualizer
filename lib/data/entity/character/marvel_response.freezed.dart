// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marvel_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterMarvelResponse _$CharacterMarvelResponseFromJson(
    Map<String, dynamic> json) {
  return _MarvelResponse.fromJson(json);
}

/// @nodoc
mixin _$CharacterMarvelResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get copyright => throw _privateConstructorUsedError;
  String? get attributionText => throw _privateConstructorUsedError;
  String? get attributionHtml => throw _privateConstructorUsedError;
  String? get etag => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterMarvelResponseCopyWith<CharacterMarvelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterMarvelResponseCopyWith<$Res> {
  factory $CharacterMarvelResponseCopyWith(CharacterMarvelResponse value,
          $Res Function(CharacterMarvelResponse) then) =
      _$CharacterMarvelResponseCopyWithImpl<$Res, CharacterMarvelResponse>;
  @useResult
  $Res call(
      {int? code,
      String? status,
      String? copyright,
      String? attributionText,
      String? attributionHtml,
      String? etag,
      Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CharacterMarvelResponseCopyWithImpl<$Res,
        $Val extends CharacterMarvelResponse>
    implements $CharacterMarvelResponseCopyWith<$Res> {
  _$CharacterMarvelResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? copyright = freezed,
    Object? attributionText = freezed,
    Object? attributionHtml = freezed,
    Object? etag = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      attributionText: freezed == attributionText
          ? _value.attributionText
          : attributionText // ignore: cast_nullable_to_non_nullable
              as String?,
      attributionHtml: freezed == attributionHtml
          ? _value.attributionHtml
          : attributionHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MarvelResponseCopyWith<$Res>
    implements $CharacterMarvelResponseCopyWith<$Res> {
  factory _$$_MarvelResponseCopyWith(
          _$_MarvelResponse value, $Res Function(_$_MarvelResponse) then) =
      __$$_MarvelResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? status,
      String? copyright,
      String? attributionText,
      String? attributionHtml,
      String? etag,
      Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_MarvelResponseCopyWithImpl<$Res>
    extends _$CharacterMarvelResponseCopyWithImpl<$Res, _$_MarvelResponse>
    implements _$$_MarvelResponseCopyWith<$Res> {
  __$$_MarvelResponseCopyWithImpl(
      _$_MarvelResponse _value, $Res Function(_$_MarvelResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? copyright = freezed,
    Object? attributionText = freezed,
    Object? attributionHtml = freezed,
    Object? etag = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_MarvelResponse(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      attributionText: freezed == attributionText
          ? _value.attributionText
          : attributionText // ignore: cast_nullable_to_non_nullable
              as String?,
      attributionHtml: freezed == attributionHtml
          ? _value.attributionHtml
          : attributionHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarvelResponse implements _MarvelResponse {
  const _$_MarvelResponse(
      {this.code,
      this.status,
      this.copyright,
      this.attributionText,
      this.attributionHtml,
      this.etag,
      this.data});

  factory _$_MarvelResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MarvelResponseFromJson(json);

  @override
  final int? code;
  @override
  final String? status;
  @override
  final String? copyright;
  @override
  final String? attributionText;
  @override
  final String? attributionHtml;
  @override
  final String? etag;
  @override
  final Data? data;

  @override
  String toString() {
    return 'CharacterMarvelResponse(code: $code, status: $status, copyright: $copyright, attributionText: $attributionText, attributionHtml: $attributionHtml, etag: $etag, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarvelResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.attributionText, attributionText) ||
                other.attributionText == attributionText) &&
            (identical(other.attributionHtml, attributionHtml) ||
                other.attributionHtml == attributionHtml) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, copyright,
      attributionText, attributionHtml, etag, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarvelResponseCopyWith<_$_MarvelResponse> get copyWith =>
      __$$_MarvelResponseCopyWithImpl<_$_MarvelResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarvelResponseToJson(
      this,
    );
  }
}

abstract class _MarvelResponse implements CharacterMarvelResponse {
  const factory _MarvelResponse(
      {final int? code,
      final String? status,
      final String? copyright,
      final String? attributionText,
      final String? attributionHtml,
      final String? etag,
      final Data? data}) = _$_MarvelResponse;

  factory _MarvelResponse.fromJson(Map<String, dynamic> json) =
      _$_MarvelResponse.fromJson;

  @override
  int? get code;
  @override
  String? get status;
  @override
  String? get copyright;
  @override
  String? get attributionText;
  @override
  String? get attributionHtml;
  @override
  String? get etag;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$_MarvelResponseCopyWith<_$_MarvelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
