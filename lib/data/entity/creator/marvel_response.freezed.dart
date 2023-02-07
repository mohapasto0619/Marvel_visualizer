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

MarvelResponse _$MarvelResponseFromJson(Map<String, dynamic> json) {
  return _MarvelResponse.fromJson(json);
}

/// @nodoc
mixin _$MarvelResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get copyright => throw _privateConstructorUsedError;
  String? get attributionText => throw _privateConstructorUsedError;
  String? get attributionHtml => throw _privateConstructorUsedError;
  String? get etag => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarvelResponseCopyWith<MarvelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarvelResponseCopyWith<$Res> {
  factory $MarvelResponseCopyWith(
          MarvelResponse value, $Res Function(MarvelResponse) then) =
      _$MarvelResponseCopyWithImpl<$Res, MarvelResponse>;
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
class _$MarvelResponseCopyWithImpl<$Res, $Val extends MarvelResponse>
    implements $MarvelResponseCopyWith<$Res> {
  _$MarvelResponseCopyWithImpl(this._value, this._then);

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
    implements $MarvelResponseCopyWith<$Res> {
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
    extends _$MarvelResponseCopyWithImpl<$Res, _$_MarvelResponse>
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
    return 'MarvelResponse(code: $code, status: $status, copyright: $copyright, attributionText: $attributionText, attributionHtml: $attributionHtml, etag: $etag, data: $data)';
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

abstract class _MarvelResponse implements MarvelResponse {
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

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int? get offset => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  List<Result>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {int? offset, int? limit, int? total, int? count, List<Result>? results});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? total = freezed,
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? offset, int? limit, int? total, int? count, List<Result>? results});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? total = freezed,
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_Data(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {this.offset,
      this.limit,
      this.total,
      this.count,
      final List<Result>? results})
      : _results = results;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int? offset;
  @override
  final int? limit;
  @override
  final int? total;
  @override
  final int? count;
  final List<Result>? _results;
  @override
  List<Result>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(offset: $offset, limit: $limit, total: $total, count: $count, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offset, limit, total, count,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final int? offset,
      final int? limit,
      final int? total,
      final int? count,
      final List<Result>? results}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get offset;
  @override
  int? get limit;
  @override
  int? get total;
  @override
  int? get count;
  @override
  List<Result>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get id => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get suffix => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get modified => throw _privateConstructorUsedError;
  Thumbnail? get thumbnail => throw _privateConstructorUsedError;
  String? get resourceUri => throw _privateConstructorUsedError;
  Comics? get comics => throw _privateConstructorUsedError;
  Comics? get series => throw _privateConstructorUsedError;
  Stories? get stories => throw _privateConstructorUsedError;
  Comics? get events => throw _privateConstructorUsedError;
  List<Url>? get urls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {int? id,
      String? firstName,
      String? middleName,
      String? lastName,
      String? suffix,
      String? fullName,
      String? modified,
      Thumbnail? thumbnail,
      String? resourceUri,
      Comics? comics,
      Comics? series,
      Stories? stories,
      Comics? events,
      List<Url>? urls});

  $ThumbnailCopyWith<$Res>? get thumbnail;
  $ComicsCopyWith<$Res>? get comics;
  $ComicsCopyWith<$Res>? get series;
  $StoriesCopyWith<$Res>? get stories;
  $ComicsCopyWith<$Res>? get events;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? suffix = freezed,
    Object? fullName = freezed,
    Object? modified = freezed,
    Object? thumbnail = freezed,
    Object? resourceUri = freezed,
    Object? comics = freezed,
    Object? series = freezed,
    Object? stories = freezed,
    Object? events = freezed,
    Object? urls = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail?,
      resourceUri: freezed == resourceUri
          ? _value.resourceUri
          : resourceUri // ignore: cast_nullable_to_non_nullable
              as String?,
      comics: freezed == comics
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as Comics?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Comics?,
      stories: freezed == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as Stories?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Comics?,
      urls: freezed == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<Url>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailCopyWith<$Res>? get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $ThumbnailCopyWith<$Res>(_value.thumbnail!, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ComicsCopyWith<$Res>? get comics {
    if (_value.comics == null) {
      return null;
    }

    return $ComicsCopyWith<$Res>(_value.comics!, (value) {
      return _then(_value.copyWith(comics: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ComicsCopyWith<$Res>? get series {
    if (_value.series == null) {
      return null;
    }

    return $ComicsCopyWith<$Res>(_value.series!, (value) {
      return _then(_value.copyWith(series: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StoriesCopyWith<$Res>? get stories {
    if (_value.stories == null) {
      return null;
    }

    return $StoriesCopyWith<$Res>(_value.stories!, (value) {
      return _then(_value.copyWith(stories: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ComicsCopyWith<$Res>? get events {
    if (_value.events == null) {
      return null;
    }

    return $ComicsCopyWith<$Res>(_value.events!, (value) {
      return _then(_value.copyWith(events: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? firstName,
      String? middleName,
      String? lastName,
      String? suffix,
      String? fullName,
      String? modified,
      Thumbnail? thumbnail,
      String? resourceUri,
      Comics? comics,
      Comics? series,
      Stories? stories,
      Comics? events,
      List<Url>? urls});

  @override
  $ThumbnailCopyWith<$Res>? get thumbnail;
  @override
  $ComicsCopyWith<$Res>? get comics;
  @override
  $ComicsCopyWith<$Res>? get series;
  @override
  $StoriesCopyWith<$Res>? get stories;
  @override
  $ComicsCopyWith<$Res>? get events;
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? suffix = freezed,
    Object? fullName = freezed,
    Object? modified = freezed,
    Object? thumbnail = freezed,
    Object? resourceUri = freezed,
    Object? comics = freezed,
    Object? series = freezed,
    Object? stories = freezed,
    Object? events = freezed,
    Object? urls = freezed,
  }) {
    return _then(_$_Result(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail?,
      resourceUri: freezed == resourceUri
          ? _value.resourceUri
          : resourceUri // ignore: cast_nullable_to_non_nullable
              as String?,
      comics: freezed == comics
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as Comics?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Comics?,
      stories: freezed == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as Stories?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Comics?,
      urls: freezed == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<Url>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {this.id,
      this.firstName,
      this.middleName,
      this.lastName,
      this.suffix,
      this.fullName,
      this.modified,
      this.thumbnail,
      this.resourceUri,
      this.comics,
      this.series,
      this.stories,
      this.events,
      final List<Url>? urls})
      : _urls = urls;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final int? id;
  @override
  final String? firstName;
  @override
  final String? middleName;
  @override
  final String? lastName;
  @override
  final String? suffix;
  @override
  final String? fullName;
  @override
  final String? modified;
  @override
  final Thumbnail? thumbnail;
  @override
  final String? resourceUri;
  @override
  final Comics? comics;
  @override
  final Comics? series;
  @override
  final Stories? stories;
  @override
  final Comics? events;
  final List<Url>? _urls;
  @override
  List<Url>? get urls {
    final value = _urls;
    if (value == null) return null;
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(id: $id, firstName: $firstName, middleName: $middleName, lastName: $lastName, suffix: $suffix, fullName: $fullName, modified: $modified, thumbnail: $thumbnail, resourceUri: $resourceUri, comics: $comics, series: $series, stories: $stories, events: $events, urls: $urls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.resourceUri, resourceUri) ||
                other.resourceUri == resourceUri) &&
            (identical(other.comics, comics) || other.comics == comics) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.stories, stories) || other.stories == stories) &&
            (identical(other.events, events) || other.events == events) &&
            const DeepCollectionEquality().equals(other._urls, _urls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      middleName,
      lastName,
      suffix,
      fullName,
      modified,
      thumbnail,
      resourceUri,
      comics,
      series,
      stories,
      events,
      const DeepCollectionEquality().hash(_urls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final int? id,
      final String? firstName,
      final String? middleName,
      final String? lastName,
      final String? suffix,
      final String? fullName,
      final String? modified,
      final Thumbnail? thumbnail,
      final String? resourceUri,
      final Comics? comics,
      final Comics? series,
      final Stories? stories,
      final Comics? events,
      final List<Url>? urls}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  int? get id;
  @override
  String? get firstName;
  @override
  String? get middleName;
  @override
  String? get lastName;
  @override
  String? get suffix;
  @override
  String? get fullName;
  @override
  String? get modified;
  @override
  Thumbnail? get thumbnail;
  @override
  String? get resourceUri;
  @override
  Comics? get comics;
  @override
  Comics? get series;
  @override
  Stories? get stories;
  @override
  Comics? get events;
  @override
  List<Url>? get urls;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Comics _$ComicsFromJson(Map<String, dynamic> json) {
  return _Comics.fromJson(json);
}

/// @nodoc
mixin _$Comics {
  int? get available => throw _privateConstructorUsedError;
  String? get collectionUri => throw _privateConstructorUsedError;
  List<ComicsItem>? get items => throw _privateConstructorUsedError;
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
      String? collectionUri,
      List<ComicsItem>? items,
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
              as List<ComicsItem>?,
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
      String? collectionUri,
      List<ComicsItem>? items,
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
              as List<ComicsItem>?,
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
      this.collectionUri,
      final List<ComicsItem>? items,
      this.returned})
      : _items = items;

  factory _$_Comics.fromJson(Map<String, dynamic> json) =>
      _$$_ComicsFromJson(json);

  @override
  final int? available;
  @override
  final String? collectionUri;
  final List<ComicsItem>? _items;
  @override
  List<ComicsItem>? get items {
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
      final String? collectionUri,
      final List<ComicsItem>? items,
      final int? returned}) = _$_Comics;

  factory _Comics.fromJson(Map<String, dynamic> json) = _$_Comics.fromJson;

  @override
  int? get available;
  @override
  String? get collectionUri;
  @override
  List<ComicsItem>? get items;
  @override
  int? get returned;
  @override
  @JsonKey(ignore: true)
  _$$_ComicsCopyWith<_$_Comics> get copyWith =>
      throw _privateConstructorUsedError;
}

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

Stories _$StoriesFromJson(Map<String, dynamic> json) {
  return _Stories.fromJson(json);
}

/// @nodoc
mixin _$Stories {
  int? get available => throw _privateConstructorUsedError;
  String? get collectionUri => throw _privateConstructorUsedError;
  List<StoriesItem>? get items => throw _privateConstructorUsedError;
  int? get returned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoriesCopyWith<Stories> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesCopyWith<$Res> {
  factory $StoriesCopyWith(Stories value, $Res Function(Stories) then) =
      _$StoriesCopyWithImpl<$Res, Stories>;
  @useResult
  $Res call(
      {int? available,
      String? collectionUri,
      List<StoriesItem>? items,
      int? returned});
}

/// @nodoc
class _$StoriesCopyWithImpl<$Res, $Val extends Stories>
    implements $StoriesCopyWith<$Res> {
  _$StoriesCopyWithImpl(this._value, this._then);

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
              as List<StoriesItem>?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoriesCopyWith<$Res> implements $StoriesCopyWith<$Res> {
  factory _$$_StoriesCopyWith(
          _$_Stories value, $Res Function(_$_Stories) then) =
      __$$_StoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? available,
      String? collectionUri,
      List<StoriesItem>? items,
      int? returned});
}

/// @nodoc
class __$$_StoriesCopyWithImpl<$Res>
    extends _$StoriesCopyWithImpl<$Res, _$_Stories>
    implements _$$_StoriesCopyWith<$Res> {
  __$$_StoriesCopyWithImpl(_$_Stories _value, $Res Function(_$_Stories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? collectionUri = freezed,
    Object? items = freezed,
    Object? returned = freezed,
  }) {
    return _then(_$_Stories(
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
              as List<StoriesItem>?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stories implements _Stories {
  const _$_Stories(
      {this.available,
      this.collectionUri,
      final List<StoriesItem>? items,
      this.returned})
      : _items = items;

  factory _$_Stories.fromJson(Map<String, dynamic> json) =>
      _$$_StoriesFromJson(json);

  @override
  final int? available;
  @override
  final String? collectionUri;
  final List<StoriesItem>? _items;
  @override
  List<StoriesItem>? get items {
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
    return 'Stories(available: $available, collectionUri: $collectionUri, items: $items, returned: $returned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stories &&
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
  _$$_StoriesCopyWith<_$_Stories> get copyWith =>
      __$$_StoriesCopyWithImpl<_$_Stories>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoriesToJson(
      this,
    );
  }
}

abstract class _Stories implements Stories {
  const factory _Stories(
      {final int? available,
      final String? collectionUri,
      final List<StoriesItem>? items,
      final int? returned}) = _$_Stories;

  factory _Stories.fromJson(Map<String, dynamic> json) = _$_Stories.fromJson;

  @override
  int? get available;
  @override
  String? get collectionUri;
  @override
  List<StoriesItem>? get items;
  @override
  int? get returned;
  @override
  @JsonKey(ignore: true)
  _$$_StoriesCopyWith<_$_Stories> get copyWith =>
      throw _privateConstructorUsedError;
}

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

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) {
  return _Thumbnail.fromJson(json);
}

/// @nodoc
mixin _$Thumbnail {
  String? get path => throw _privateConstructorUsedError;
  String? get extension => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailCopyWith<Thumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailCopyWith<$Res> {
  factory $ThumbnailCopyWith(Thumbnail value, $Res Function(Thumbnail) then) =
      _$ThumbnailCopyWithImpl<$Res, Thumbnail>;
  @useResult
  $Res call({String? path, String? extension});
}

/// @nodoc
class _$ThumbnailCopyWithImpl<$Res, $Val extends Thumbnail>
    implements $ThumbnailCopyWith<$Res> {
  _$ThumbnailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? extension = freezed,
  }) {
    return _then(_value.copyWith(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ThumbnailCopyWith<$Res> implements $ThumbnailCopyWith<$Res> {
  factory _$$_ThumbnailCopyWith(
          _$_Thumbnail value, $Res Function(_$_Thumbnail) then) =
      __$$_ThumbnailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? path, String? extension});
}

/// @nodoc
class __$$_ThumbnailCopyWithImpl<$Res>
    extends _$ThumbnailCopyWithImpl<$Res, _$_Thumbnail>
    implements _$$_ThumbnailCopyWith<$Res> {
  __$$_ThumbnailCopyWithImpl(
      _$_Thumbnail _value, $Res Function(_$_Thumbnail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? extension = freezed,
  }) {
    return _then(_$_Thumbnail(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Thumbnail implements _Thumbnail {
  const _$_Thumbnail({this.path, this.extension});

  factory _$_Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$$_ThumbnailFromJson(json);

  @override
  final String? path;
  @override
  final String? extension;

  @override
  String toString() {
    return 'Thumbnail(path: $path, extension: $extension)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Thumbnail &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.extension, extension) ||
                other.extension == extension));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, extension);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThumbnailCopyWith<_$_Thumbnail> get copyWith =>
      __$$_ThumbnailCopyWithImpl<_$_Thumbnail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThumbnailToJson(
      this,
    );
  }
}

abstract class _Thumbnail implements Thumbnail {
  const factory _Thumbnail({final String? path, final String? extension}) =
      _$_Thumbnail;

  factory _Thumbnail.fromJson(Map<String, dynamic> json) =
      _$_Thumbnail.fromJson;

  @override
  String? get path;
  @override
  String? get extension;
  @override
  @JsonKey(ignore: true)
  _$$_ThumbnailCopyWith<_$_Thumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}

Url _$UrlFromJson(Map<String, dynamic> json) {
  return _Url.fromJson(json);
}

/// @nodoc
mixin _$Url {
  String? get type => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlCopyWith<Url> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlCopyWith<$Res> {
  factory $UrlCopyWith(Url value, $Res Function(Url) then) =
      _$UrlCopyWithImpl<$Res, Url>;
  @useResult
  $Res call({String? type, String? url});
}

/// @nodoc
class _$UrlCopyWithImpl<$Res, $Val extends Url> implements $UrlCopyWith<$Res> {
  _$UrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UrlCopyWith<$Res> implements $UrlCopyWith<$Res> {
  factory _$$_UrlCopyWith(_$_Url value, $Res Function(_$_Url) then) =
      __$$_UrlCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? url});
}

/// @nodoc
class __$$_UrlCopyWithImpl<$Res> extends _$UrlCopyWithImpl<$Res, _$_Url>
    implements _$$_UrlCopyWith<$Res> {
  __$$_UrlCopyWithImpl(_$_Url _value, $Res Function(_$_Url) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Url(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Url implements _Url {
  const _$_Url({this.type, this.url});

  factory _$_Url.fromJson(Map<String, dynamic> json) => _$$_UrlFromJson(json);

  @override
  final String? type;
  @override
  final String? url;

  @override
  String toString() {
    return 'Url(type: $type, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Url &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UrlCopyWith<_$_Url> get copyWith =>
      __$$_UrlCopyWithImpl<_$_Url>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UrlToJson(
      this,
    );
  }
}

abstract class _Url implements Url {
  const factory _Url({final String? type, final String? url}) = _$_Url;

  factory _Url.fromJson(Map<String, dynamic> json) = _$_Url.fromJson;

  @override
  String? get type;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_UrlCopyWith<_$_Url> get copyWith => throw _privateConstructorUsedError;
}
