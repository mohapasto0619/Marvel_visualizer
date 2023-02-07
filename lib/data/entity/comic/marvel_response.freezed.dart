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
  List<Result> get results => throw _privateConstructorUsedError;

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
      {int? offset, int? limit, int? total, int? count, List<Result> results});
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
    Object? results = null,
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
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
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
      {int? offset, int? limit, int? total, int? count, List<Result> results});
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
    Object? results = null,
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
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
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
      required final List<Result> results})
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
  final List<Result> _results;
  @override
  List<Result> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
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
      required final List<Result> results}) = _$_Data;

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
  List<Result> get results;
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
  int? get digitalId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get issueNumber =>
      throw _privateConstructorUsedError; //VariantDescription? variantDescription,
  String? get description => throw _privateConstructorUsedError;
  String? get modified => throw _privateConstructorUsedError;
  String? get isbn => throw _privateConstructorUsedError;
  String? get upc => throw _privateConstructorUsedError;
  String? get diamondCode => throw _privateConstructorUsedError;
  String? get ean => throw _privateConstructorUsedError;
  String? get issn => throw _privateConstructorUsedError; //Format? format,
  int? get pageCount => throw _privateConstructorUsedError;
  List<TextObject>? get textObjects => throw _privateConstructorUsedError;
  String? get resourceUri =>
      throw _privateConstructorUsedError; //List<Url>? urls,
  Series? get series => throw _privateConstructorUsedError;
  List<Series>? get variants => throw _privateConstructorUsedError;
  List<dynamic>? get collections => throw _privateConstructorUsedError;
  List<dynamic>? get collectedIssues => throw _privateConstructorUsedError;
  List<Date>? get dates => throw _privateConstructorUsedError;
  List<Price>? get prices => throw _privateConstructorUsedError;
  Thumbnail? get thumbnail => throw _privateConstructorUsedError;
  List<Thumbnail>? get images => throw _privateConstructorUsedError;
  Creators? get creators => throw _privateConstructorUsedError;
  Characters? get characters => throw _privateConstructorUsedError;
  Stories? get stories => throw _privateConstructorUsedError;
  Characters? get events => throw _privateConstructorUsedError;

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
      int? digitalId,
      String? title,
      int? issueNumber,
      String? description,
      String? modified,
      String? isbn,
      String? upc,
      String? diamondCode,
      String? ean,
      String? issn,
      int? pageCount,
      List<TextObject>? textObjects,
      String? resourceUri,
      Series? series,
      List<Series>? variants,
      List<dynamic>? collections,
      List<dynamic>? collectedIssues,
      List<Date>? dates,
      List<Price>? prices,
      Thumbnail? thumbnail,
      List<Thumbnail>? images,
      Creators? creators,
      Characters? characters,
      Stories? stories,
      Characters? events});

  $SeriesCopyWith<$Res>? get series;
  $ThumbnailCopyWith<$Res>? get thumbnail;
  $CreatorsCopyWith<$Res>? get creators;
  $CharactersCopyWith<$Res>? get characters;
  $StoriesCopyWith<$Res>? get stories;
  $CharactersCopyWith<$Res>? get events;
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
    Object? digitalId = freezed,
    Object? title = freezed,
    Object? issueNumber = freezed,
    Object? description = freezed,
    Object? modified = freezed,
    Object? isbn = freezed,
    Object? upc = freezed,
    Object? diamondCode = freezed,
    Object? ean = freezed,
    Object? issn = freezed,
    Object? pageCount = freezed,
    Object? textObjects = freezed,
    Object? resourceUri = freezed,
    Object? series = freezed,
    Object? variants = freezed,
    Object? collections = freezed,
    Object? collectedIssues = freezed,
    Object? dates = freezed,
    Object? prices = freezed,
    Object? thumbnail = freezed,
    Object? images = freezed,
    Object? creators = freezed,
    Object? characters = freezed,
    Object? stories = freezed,
    Object? events = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      digitalId: freezed == digitalId
          ? _value.digitalId
          : digitalId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      issueNumber: freezed == issueNumber
          ? _value.issueNumber
          : issueNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      upc: freezed == upc
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as String?,
      diamondCode: freezed == diamondCode
          ? _value.diamondCode
          : diamondCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ean: freezed == ean
          ? _value.ean
          : ean // ignore: cast_nullable_to_non_nullable
              as String?,
      issn: freezed == issn
          ? _value.issn
          : issn // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      textObjects: freezed == textObjects
          ? _value.textObjects
          : textObjects // ignore: cast_nullable_to_non_nullable
              as List<TextObject>?,
      resourceUri: freezed == resourceUri
          ? _value.resourceUri
          : resourceUri // ignore: cast_nullable_to_non_nullable
              as String?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series?,
      variants: freezed == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Series>?,
      collections: freezed == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      collectedIssues: freezed == collectedIssues
          ? _value.collectedIssues
          : collectedIssues // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<Date>?,
      prices: freezed == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<Price>?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Thumbnail>?,
      creators: freezed == creators
          ? _value.creators
          : creators // ignore: cast_nullable_to_non_nullable
              as Creators?,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as Characters?,
      stories: freezed == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as Stories?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Characters?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SeriesCopyWith<$Res>? get series {
    if (_value.series == null) {
      return null;
    }

    return $SeriesCopyWith<$Res>(_value.series!, (value) {
      return _then(_value.copyWith(series: value) as $Val);
    });
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
  $CreatorsCopyWith<$Res>? get creators {
    if (_value.creators == null) {
      return null;
    }

    return $CreatorsCopyWith<$Res>(_value.creators!, (value) {
      return _then(_value.copyWith(creators: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CharactersCopyWith<$Res>? get characters {
    if (_value.characters == null) {
      return null;
    }

    return $CharactersCopyWith<$Res>(_value.characters!, (value) {
      return _then(_value.copyWith(characters: value) as $Val);
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
  $CharactersCopyWith<$Res>? get events {
    if (_value.events == null) {
      return null;
    }

    return $CharactersCopyWith<$Res>(_value.events!, (value) {
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
      int? digitalId,
      String? title,
      int? issueNumber,
      String? description,
      String? modified,
      String? isbn,
      String? upc,
      String? diamondCode,
      String? ean,
      String? issn,
      int? pageCount,
      List<TextObject>? textObjects,
      String? resourceUri,
      Series? series,
      List<Series>? variants,
      List<dynamic>? collections,
      List<dynamic>? collectedIssues,
      List<Date>? dates,
      List<Price>? prices,
      Thumbnail? thumbnail,
      List<Thumbnail>? images,
      Creators? creators,
      Characters? characters,
      Stories? stories,
      Characters? events});

  @override
  $SeriesCopyWith<$Res>? get series;
  @override
  $ThumbnailCopyWith<$Res>? get thumbnail;
  @override
  $CreatorsCopyWith<$Res>? get creators;
  @override
  $CharactersCopyWith<$Res>? get characters;
  @override
  $StoriesCopyWith<$Res>? get stories;
  @override
  $CharactersCopyWith<$Res>? get events;
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
    Object? digitalId = freezed,
    Object? title = freezed,
    Object? issueNumber = freezed,
    Object? description = freezed,
    Object? modified = freezed,
    Object? isbn = freezed,
    Object? upc = freezed,
    Object? diamondCode = freezed,
    Object? ean = freezed,
    Object? issn = freezed,
    Object? pageCount = freezed,
    Object? textObjects = freezed,
    Object? resourceUri = freezed,
    Object? series = freezed,
    Object? variants = freezed,
    Object? collections = freezed,
    Object? collectedIssues = freezed,
    Object? dates = freezed,
    Object? prices = freezed,
    Object? thumbnail = freezed,
    Object? images = freezed,
    Object? creators = freezed,
    Object? characters = freezed,
    Object? stories = freezed,
    Object? events = freezed,
  }) {
    return _then(_$_Result(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      digitalId: freezed == digitalId
          ? _value.digitalId
          : digitalId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      issueNumber: freezed == issueNumber
          ? _value.issueNumber
          : issueNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      upc: freezed == upc
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as String?,
      diamondCode: freezed == diamondCode
          ? _value.diamondCode
          : diamondCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ean: freezed == ean
          ? _value.ean
          : ean // ignore: cast_nullable_to_non_nullable
              as String?,
      issn: freezed == issn
          ? _value.issn
          : issn // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      textObjects: freezed == textObjects
          ? _value._textObjects
          : textObjects // ignore: cast_nullable_to_non_nullable
              as List<TextObject>?,
      resourceUri: freezed == resourceUri
          ? _value.resourceUri
          : resourceUri // ignore: cast_nullable_to_non_nullable
              as String?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series?,
      variants: freezed == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Series>?,
      collections: freezed == collections
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      collectedIssues: freezed == collectedIssues
          ? _value._collectedIssues
          : collectedIssues // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      dates: freezed == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<Date>?,
      prices: freezed == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<Price>?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Thumbnail>?,
      creators: freezed == creators
          ? _value.creators
          : creators // ignore: cast_nullable_to_non_nullable
              as Creators?,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as Characters?,
      stories: freezed == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as Stories?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Characters?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {this.id,
      this.digitalId,
      this.title,
      this.issueNumber,
      this.description,
      this.modified,
      this.isbn,
      this.upc,
      this.diamondCode,
      this.ean,
      this.issn,
      this.pageCount,
      final List<TextObject>? textObjects,
      this.resourceUri,
      this.series,
      final List<Series>? variants,
      final List<dynamic>? collections,
      final List<dynamic>? collectedIssues,
      final List<Date>? dates,
      final List<Price>? prices,
      this.thumbnail,
      final List<Thumbnail>? images,
      this.creators,
      this.characters,
      this.stories,
      this.events})
      : _textObjects = textObjects,
        _variants = variants,
        _collections = collections,
        _collectedIssues = collectedIssues,
        _dates = dates,
        _prices = prices,
        _images = images;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final int? id;
  @override
  final int? digitalId;
  @override
  final String? title;
  @override
  final int? issueNumber;
//VariantDescription? variantDescription,
  @override
  final String? description;
  @override
  final String? modified;
  @override
  final String? isbn;
  @override
  final String? upc;
  @override
  final String? diamondCode;
  @override
  final String? ean;
  @override
  final String? issn;
//Format? format,
  @override
  final int? pageCount;
  final List<TextObject>? _textObjects;
  @override
  List<TextObject>? get textObjects {
    final value = _textObjects;
    if (value == null) return null;
    if (_textObjects is EqualUnmodifiableListView) return _textObjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? resourceUri;
//List<Url>? urls,
  @override
  final Series? series;
  final List<Series>? _variants;
  @override
  List<Series>? get variants {
    final value = _variants;
    if (value == null) return null;
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _collections;
  @override
  List<dynamic>? get collections {
    final value = _collections;
    if (value == null) return null;
    if (_collections is EqualUnmodifiableListView) return _collections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _collectedIssues;
  @override
  List<dynamic>? get collectedIssues {
    final value = _collectedIssues;
    if (value == null) return null;
    if (_collectedIssues is EqualUnmodifiableListView) return _collectedIssues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Date>? _dates;
  @override
  List<Date>? get dates {
    final value = _dates;
    if (value == null) return null;
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Price>? _prices;
  @override
  List<Price>? get prices {
    final value = _prices;
    if (value == null) return null;
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Thumbnail? thumbnail;
  final List<Thumbnail>? _images;
  @override
  List<Thumbnail>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Creators? creators;
  @override
  final Characters? characters;
  @override
  final Stories? stories;
  @override
  final Characters? events;

  @override
  String toString() {
    return 'Result(id: $id, digitalId: $digitalId, title: $title, issueNumber: $issueNumber, description: $description, modified: $modified, isbn: $isbn, upc: $upc, diamondCode: $diamondCode, ean: $ean, issn: $issn, pageCount: $pageCount, textObjects: $textObjects, resourceUri: $resourceUri, series: $series, variants: $variants, collections: $collections, collectedIssues: $collectedIssues, dates: $dates, prices: $prices, thumbnail: $thumbnail, images: $images, creators: $creators, characters: $characters, stories: $stories, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.digitalId, digitalId) ||
                other.digitalId == digitalId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.issueNumber, issueNumber) ||
                other.issueNumber == issueNumber) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.upc, upc) || other.upc == upc) &&
            (identical(other.diamondCode, diamondCode) ||
                other.diamondCode == diamondCode) &&
            (identical(other.ean, ean) || other.ean == ean) &&
            (identical(other.issn, issn) || other.issn == issn) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            const DeepCollectionEquality()
                .equals(other._textObjects, _textObjects) &&
            (identical(other.resourceUri, resourceUri) ||
                other.resourceUri == resourceUri) &&
            (identical(other.series, series) || other.series == series) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections) &&
            const DeepCollectionEquality()
                .equals(other._collectedIssues, _collectedIssues) &&
            const DeepCollectionEquality().equals(other._dates, _dates) &&
            const DeepCollectionEquality().equals(other._prices, _prices) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.creators, creators) ||
                other.creators == creators) &&
            (identical(other.characters, characters) ||
                other.characters == characters) &&
            (identical(other.stories, stories) || other.stories == stories) &&
            (identical(other.events, events) || other.events == events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        digitalId,
        title,
        issueNumber,
        description,
        modified,
        isbn,
        upc,
        diamondCode,
        ean,
        issn,
        pageCount,
        const DeepCollectionEquality().hash(_textObjects),
        resourceUri,
        series,
        const DeepCollectionEquality().hash(_variants),
        const DeepCollectionEquality().hash(_collections),
        const DeepCollectionEquality().hash(_collectedIssues),
        const DeepCollectionEquality().hash(_dates),
        const DeepCollectionEquality().hash(_prices),
        thumbnail,
        const DeepCollectionEquality().hash(_images),
        creators,
        characters,
        stories,
        events
      ]);

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
      final int? digitalId,
      final String? title,
      final int? issueNumber,
      final String? description,
      final String? modified,
      final String? isbn,
      final String? upc,
      final String? diamondCode,
      final String? ean,
      final String? issn,
      final int? pageCount,
      final List<TextObject>? textObjects,
      final String? resourceUri,
      final Series? series,
      final List<Series>? variants,
      final List<dynamic>? collections,
      final List<dynamic>? collectedIssues,
      final List<Date>? dates,
      final List<Price>? prices,
      final Thumbnail? thumbnail,
      final List<Thumbnail>? images,
      final Creators? creators,
      final Characters? characters,
      final Stories? stories,
      final Characters? events}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  int? get id;
  @override
  int? get digitalId;
  @override
  String? get title;
  @override
  int? get issueNumber;
  @override //VariantDescription? variantDescription,
  String? get description;
  @override
  String? get modified;
  @override
  String? get isbn;
  @override
  String? get upc;
  @override
  String? get diamondCode;
  @override
  String? get ean;
  @override
  String? get issn;
  @override //Format? format,
  int? get pageCount;
  @override
  List<TextObject>? get textObjects;
  @override
  String? get resourceUri;
  @override //List<Url>? urls,
  Series? get series;
  @override
  List<Series>? get variants;
  @override
  List<dynamic>? get collections;
  @override
  List<dynamic>? get collectedIssues;
  @override
  List<Date>? get dates;
  @override
  List<Price>? get prices;
  @override
  Thumbnail? get thumbnail;
  @override
  List<Thumbnail>? get images;
  @override
  Creators? get creators;
  @override
  Characters? get characters;
  @override
  Stories? get stories;
  @override
  Characters? get events;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Characters _$CharactersFromJson(Map<String, dynamic> json) {
  return _Characters.fromJson(json);
}

/// @nodoc
mixin _$Characters {
  int? get available => throw _privateConstructorUsedError;
  String? get collectionUri => throw _privateConstructorUsedError;
  List<Series>? get items => throw _privateConstructorUsedError;
  int? get returned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharactersCopyWith<Characters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersCopyWith<$Res> {
  factory $CharactersCopyWith(
          Characters value, $Res Function(Characters) then) =
      _$CharactersCopyWithImpl<$Res, Characters>;
  @useResult
  $Res call(
      {int? available,
      String? collectionUri,
      List<Series>? items,
      int? returned});
}

/// @nodoc
class _$CharactersCopyWithImpl<$Res, $Val extends Characters>
    implements $CharactersCopyWith<$Res> {
  _$CharactersCopyWithImpl(this._value, this._then);

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
              as List<Series>?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharactersCopyWith<$Res>
    implements $CharactersCopyWith<$Res> {
  factory _$$_CharactersCopyWith(
          _$_Characters value, $Res Function(_$_Characters) then) =
      __$$_CharactersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? available,
      String? collectionUri,
      List<Series>? items,
      int? returned});
}

/// @nodoc
class __$$_CharactersCopyWithImpl<$Res>
    extends _$CharactersCopyWithImpl<$Res, _$_Characters>
    implements _$$_CharactersCopyWith<$Res> {
  __$$_CharactersCopyWithImpl(
      _$_Characters _value, $Res Function(_$_Characters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? collectionUri = freezed,
    Object? items = freezed,
    Object? returned = freezed,
  }) {
    return _then(_$_Characters(
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
              as List<Series>?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Characters implements _Characters {
  const _$_Characters(
      {this.available,
      this.collectionUri,
      final List<Series>? items,
      this.returned})
      : _items = items;

  factory _$_Characters.fromJson(Map<String, dynamic> json) =>
      _$$_CharactersFromJson(json);

  @override
  final int? available;
  @override
  final String? collectionUri;
  final List<Series>? _items;
  @override
  List<Series>? get items {
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
    return 'Characters(available: $available, collectionUri: $collectionUri, items: $items, returned: $returned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Characters &&
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
  _$$_CharactersCopyWith<_$_Characters> get copyWith =>
      __$$_CharactersCopyWithImpl<_$_Characters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharactersToJson(
      this,
    );
  }
}

abstract class _Characters implements Characters {
  const factory _Characters(
      {final int? available,
      final String? collectionUri,
      final List<Series>? items,
      final int? returned}) = _$_Characters;

  factory _Characters.fromJson(Map<String, dynamic> json) =
      _$_Characters.fromJson;

  @override
  int? get available;
  @override
  String? get collectionUri;
  @override
  List<Series>? get items;
  @override
  int? get returned;
  @override
  @JsonKey(ignore: true)
  _$$_CharactersCopyWith<_$_Characters> get copyWith =>
      throw _privateConstructorUsedError;
}

Series _$SeriesFromJson(Map<String, dynamic> json) {
  return _Series.fromJson(json);
}

/// @nodoc
mixin _$Series {
  String? get resourceUri => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeriesCopyWith<Series> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesCopyWith<$Res> {
  factory $SeriesCopyWith(Series value, $Res Function(Series) then) =
      _$SeriesCopyWithImpl<$Res, Series>;
  @useResult
  $Res call({String? resourceUri, String? name});
}

/// @nodoc
class _$SeriesCopyWithImpl<$Res, $Val extends Series>
    implements $SeriesCopyWith<$Res> {
  _$SeriesCopyWithImpl(this._value, this._then);

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
abstract class _$$_SeriesCopyWith<$Res> implements $SeriesCopyWith<$Res> {
  factory _$$_SeriesCopyWith(_$_Series value, $Res Function(_$_Series) then) =
      __$$_SeriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? resourceUri, String? name});
}

/// @nodoc
class __$$_SeriesCopyWithImpl<$Res>
    extends _$SeriesCopyWithImpl<$Res, _$_Series>
    implements _$$_SeriesCopyWith<$Res> {
  __$$_SeriesCopyWithImpl(_$_Series _value, $Res Function(_$_Series) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceUri = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Series(
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
class _$_Series implements _Series {
  const _$_Series({this.resourceUri, this.name});

  factory _$_Series.fromJson(Map<String, dynamic> json) =>
      _$$_SeriesFromJson(json);

  @override
  final String? resourceUri;
  @override
  final String? name;

  @override
  String toString() {
    return 'Series(resourceUri: $resourceUri, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Series &&
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
  _$$_SeriesCopyWith<_$_Series> get copyWith =>
      __$$_SeriesCopyWithImpl<_$_Series>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeriesToJson(
      this,
    );
  }
}

abstract class _Series implements Series {
  const factory _Series({final String? resourceUri, final String? name}) =
      _$_Series;

  factory _Series.fromJson(Map<String, dynamic> json) = _$_Series.fromJson;

  @override
  String? get resourceUri;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_SeriesCopyWith<_$_Series> get copyWith =>
      throw _privateConstructorUsedError;
}

Creators _$CreatorsFromJson(Map<String, dynamic> json) {
  return _Creators.fromJson(json);
}

/// @nodoc
mixin _$Creators {
  int? get available => throw _privateConstructorUsedError;
  String? get collectionUri => throw _privateConstructorUsedError;
  List<CreatorsItem>? get items => throw _privateConstructorUsedError;
  int? get returned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatorsCopyWith<Creators> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorsCopyWith<$Res> {
  factory $CreatorsCopyWith(Creators value, $Res Function(Creators) then) =
      _$CreatorsCopyWithImpl<$Res, Creators>;
  @useResult
  $Res call(
      {int? available,
      String? collectionUri,
      List<CreatorsItem>? items,
      int? returned});
}

/// @nodoc
class _$CreatorsCopyWithImpl<$Res, $Val extends Creators>
    implements $CreatorsCopyWith<$Res> {
  _$CreatorsCopyWithImpl(this._value, this._then);

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
              as List<CreatorsItem>?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatorsCopyWith<$Res> implements $CreatorsCopyWith<$Res> {
  factory _$$_CreatorsCopyWith(
          _$_Creators value, $Res Function(_$_Creators) then) =
      __$$_CreatorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? available,
      String? collectionUri,
      List<CreatorsItem>? items,
      int? returned});
}

/// @nodoc
class __$$_CreatorsCopyWithImpl<$Res>
    extends _$CreatorsCopyWithImpl<$Res, _$_Creators>
    implements _$$_CreatorsCopyWith<$Res> {
  __$$_CreatorsCopyWithImpl(
      _$_Creators _value, $Res Function(_$_Creators) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? collectionUri = freezed,
    Object? items = freezed,
    Object? returned = freezed,
  }) {
    return _then(_$_Creators(
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
              as List<CreatorsItem>?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Creators implements _Creators {
  const _$_Creators(
      {this.available,
      this.collectionUri,
      final List<CreatorsItem>? items,
      this.returned})
      : _items = items;

  factory _$_Creators.fromJson(Map<String, dynamic> json) =>
      _$$_CreatorsFromJson(json);

  @override
  final int? available;
  @override
  final String? collectionUri;
  final List<CreatorsItem>? _items;
  @override
  List<CreatorsItem>? get items {
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
    return 'Creators(available: $available, collectionUri: $collectionUri, items: $items, returned: $returned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Creators &&
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
  _$$_CreatorsCopyWith<_$_Creators> get copyWith =>
      __$$_CreatorsCopyWithImpl<_$_Creators>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatorsToJson(
      this,
    );
  }
}

abstract class _Creators implements Creators {
  const factory _Creators(
      {final int? available,
      final String? collectionUri,
      final List<CreatorsItem>? items,
      final int? returned}) = _$_Creators;

  factory _Creators.fromJson(Map<String, dynamic> json) = _$_Creators.fromJson;

  @override
  int? get available;
  @override
  String? get collectionUri;
  @override
  List<CreatorsItem>? get items;
  @override
  int? get returned;
  @override
  @JsonKey(ignore: true)
  _$$_CreatorsCopyWith<_$_Creators> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatorsItem _$CreatorsItemFromJson(Map<String, dynamic> json) {
  return _CreatorsItem.fromJson(json);
}

/// @nodoc
mixin _$CreatorsItem {
  String? get resourceUri => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatorsItemCopyWith<CreatorsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorsItemCopyWith<$Res> {
  factory $CreatorsItemCopyWith(
          CreatorsItem value, $Res Function(CreatorsItem) then) =
      _$CreatorsItemCopyWithImpl<$Res, CreatorsItem>;
  @useResult
  $Res call({String? resourceUri, String? name});
}

/// @nodoc
class _$CreatorsItemCopyWithImpl<$Res, $Val extends CreatorsItem>
    implements $CreatorsItemCopyWith<$Res> {
  _$CreatorsItemCopyWithImpl(this._value, this._then);

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
abstract class _$$_CreatorsItemCopyWith<$Res>
    implements $CreatorsItemCopyWith<$Res> {
  factory _$$_CreatorsItemCopyWith(
          _$_CreatorsItem value, $Res Function(_$_CreatorsItem) then) =
      __$$_CreatorsItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? resourceUri, String? name});
}

/// @nodoc
class __$$_CreatorsItemCopyWithImpl<$Res>
    extends _$CreatorsItemCopyWithImpl<$Res, _$_CreatorsItem>
    implements _$$_CreatorsItemCopyWith<$Res> {
  __$$_CreatorsItemCopyWithImpl(
      _$_CreatorsItem _value, $Res Function(_$_CreatorsItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceUri = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CreatorsItem(
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
class _$_CreatorsItem implements _CreatorsItem {
  const _$_CreatorsItem({this.resourceUri, this.name});

  factory _$_CreatorsItem.fromJson(Map<String, dynamic> json) =>
      _$$_CreatorsItemFromJson(json);

  @override
  final String? resourceUri;
  @override
  final String? name;

  @override
  String toString() {
    return 'CreatorsItem(resourceUri: $resourceUri, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatorsItem &&
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
  _$$_CreatorsItemCopyWith<_$_CreatorsItem> get copyWith =>
      __$$_CreatorsItemCopyWithImpl<_$_CreatorsItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatorsItemToJson(
      this,
    );
  }
}

abstract class _CreatorsItem implements CreatorsItem {
  const factory _CreatorsItem({final String? resourceUri, final String? name}) =
      _$_CreatorsItem;

  factory _CreatorsItem.fromJson(Map<String, dynamic> json) =
      _$_CreatorsItem.fromJson;

  @override
  String? get resourceUri;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_CreatorsItemCopyWith<_$_CreatorsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

Date _$DateFromJson(Map<String, dynamic> json) {
  return _Date.fromJson(json);
}

/// @nodoc
mixin _$Date {
//DateType? type,
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateCopyWith<Date> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateCopyWith<$Res> {
  factory $DateCopyWith(Date value, $Res Function(Date) then) =
      _$DateCopyWithImpl<$Res, Date>;
  @useResult
  $Res call({String? date});
}

/// @nodoc
class _$DateCopyWithImpl<$Res, $Val extends Date>
    implements $DateCopyWith<$Res> {
  _$DateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DateCopyWith<$Res> implements $DateCopyWith<$Res> {
  factory _$$_DateCopyWith(_$_Date value, $Res Function(_$_Date) then) =
      __$$_DateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date});
}

/// @nodoc
class __$$_DateCopyWithImpl<$Res> extends _$DateCopyWithImpl<$Res, _$_Date>
    implements _$$_DateCopyWith<$Res> {
  __$$_DateCopyWithImpl(_$_Date _value, $Res Function(_$_Date) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$_Date(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Date implements _Date {
  const _$_Date({this.date});

  factory _$_Date.fromJson(Map<String, dynamic> json) => _$$_DateFromJson(json);

//DateType? type,
  @override
  final String? date;

  @override
  String toString() {
    return 'Date(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Date &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateCopyWith<_$_Date> get copyWith =>
      __$$_DateCopyWithImpl<_$_Date>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateToJson(
      this,
    );
  }
}

abstract class _Date implements Date {
  const factory _Date({final String? date}) = _$_Date;

  factory _Date.fromJson(Map<String, dynamic> json) = _$_Date.fromJson;

  @override //DateType? type,
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$_DateCopyWith<_$_Date> get copyWith => throw _privateConstructorUsedError;
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

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
mixin _$Price {
//PriceType? type,
  double? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res, Price>;
  @useResult
  $Res call({double? price});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$_PriceCopyWith(_$_Price value, $Res Function(_$_Price) then) =
      __$$_PriceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? price});
}

/// @nodoc
class __$$_PriceCopyWithImpl<$Res> extends _$PriceCopyWithImpl<$Res, _$_Price>
    implements _$$_PriceCopyWith<$Res> {
  __$$_PriceCopyWithImpl(_$_Price _value, $Res Function(_$_Price) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_$_Price(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Price implements _Price {
  const _$_Price({this.price});

  factory _$_Price.fromJson(Map<String, dynamic> json) =>
      _$$_PriceFromJson(json);

//PriceType? type,
  @override
  final double? price;

  @override
  String toString() {
    return 'Price(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Price &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      __$$_PriceCopyWithImpl<_$_Price>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceToJson(
      this,
    );
  }
}

abstract class _Price implements Price {
  const factory _Price({final double? price}) = _$_Price;

  factory _Price.fromJson(Map<String, dynamic> json) = _$_Price.fromJson;

  @override //PriceType? type,
  double? get price;
  @override
  @JsonKey(ignore: true)
  _$$_PriceCopyWith<_$_Price> get copyWith =>
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

TextObject _$TextObjectFromJson(Map<String, dynamic> json) {
  return _TextObject.fromJson(json);
}

/// @nodoc
mixin _$TextObject {
//TextObjectType? type,
//Language? language,
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextObjectCopyWith<TextObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextObjectCopyWith<$Res> {
  factory $TextObjectCopyWith(
          TextObject value, $Res Function(TextObject) then) =
      _$TextObjectCopyWithImpl<$Res, TextObject>;
  @useResult
  $Res call({String? text});
}

/// @nodoc
class _$TextObjectCopyWithImpl<$Res, $Val extends TextObject>
    implements $TextObjectCopyWith<$Res> {
  _$TextObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TextObjectCopyWith<$Res>
    implements $TextObjectCopyWith<$Res> {
  factory _$$_TextObjectCopyWith(
          _$_TextObject value, $Res Function(_$_TextObject) then) =
      __$$_TextObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text});
}

/// @nodoc
class __$$_TextObjectCopyWithImpl<$Res>
    extends _$TextObjectCopyWithImpl<$Res, _$_TextObject>
    implements _$$_TextObjectCopyWith<$Res> {
  __$$_TextObjectCopyWithImpl(
      _$_TextObject _value, $Res Function(_$_TextObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$_TextObject(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextObject implements _TextObject {
  const _$_TextObject({this.text});

  factory _$_TextObject.fromJson(Map<String, dynamic> json) =>
      _$$_TextObjectFromJson(json);

//TextObjectType? type,
//Language? language,
  @override
  final String? text;

  @override
  String toString() {
    return 'TextObject(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextObject &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextObjectCopyWith<_$_TextObject> get copyWith =>
      __$$_TextObjectCopyWithImpl<_$_TextObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextObjectToJson(
      this,
    );
  }
}

abstract class _TextObject implements TextObject {
  const factory _TextObject({final String? text}) = _$_TextObject;

  factory _TextObject.fromJson(Map<String, dynamic> json) =
      _$_TextObject.fromJson;

  @override //TextObjectType? type,
//Language? language,
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_TextObjectCopyWith<_$_TextObject> get copyWith =>
      throw _privateConstructorUsedError;
}
