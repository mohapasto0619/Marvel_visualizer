import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'marvel_response.freezed.dart';
part 'marvel_response.g.dart';

MarvelResponse marvelResponseFromJson(String str) =>
    MarvelResponse.fromJson(json.decode(str));

String marvelResponseToJson(MarvelResponse data) => json.encode(data.toJson());

@freezed
class MarvelResponse with _$MarvelResponse {
  const factory MarvelResponse({
    int? code,
    String? status,
    String? copyright,
    String? attributionText,
    String? attributionHtml,
    String? etag,
    Data? data,
  }) = _MarvelResponse;

  factory MarvelResponse.fromJson(Map<String, dynamic> json) =>
      _$MarvelResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    int? offset,
    int? limit,
    int? total,
    int? count,
    List<Result>? results,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? id,
    int? digitalId,
    String? title,
    int? issueNumber,
    //VariantDescription? variantDescription,
    String? description,
    String? modified,
    String? isbn,
    String? upc,
    String? diamondCode,
    String? ean,
    String? issn,
    //Format? format,
    int? pageCount,
    List<TextObject>? textObjects,
    String? resourceUri,
    //List<Url>? urls,
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
    Characters? events,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Characters with _$Characters {
  const factory Characters({
    int? available,
    String? collectionUri,
    List<Series>? items,
    int? returned,
  }) = _Characters;

  factory Characters.fromJson(Map<String, dynamic> json) =>
      _$CharactersFromJson(json);
}

@freezed
class Series with _$Series {
  const factory Series({
    String? resourceUri,
    String? name,
  }) = _Series;

  factory Series.fromJson(Map<String, dynamic> json) => _$SeriesFromJson(json);
}

@freezed
class Creators with _$Creators {
  const factory Creators({
    int? available,
    String? collectionUri,
    List<CreatorsItem>? items,
    int? returned,
  }) = _Creators;

  factory Creators.fromJson(Map<String, dynamic> json) =>
      _$CreatorsFromJson(json);
}

@freezed
class CreatorsItem with _$CreatorsItem {
  const factory CreatorsItem({
    String? resourceUri,
    String? name,
    //Role? role,
  }) = _CreatorsItem;

  factory CreatorsItem.fromJson(Map<String, dynamic> json) =>
      _$CreatorsItemFromJson(json);
}

@freezed
class Date with _$Date {
  const factory Date({
    //DateType? type,
    String? date,
  }) = _Date;

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);
}

@freezed
class Thumbnail with _$Thumbnail {
  const factory Thumbnail({
    String? path,
    String? extension,
  }) = _Thumbnail;

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);
}

@freezed
class Price with _$Price {
  const factory Price({
    //PriceType? type,
    double? price,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}

@freezed
class Stories with _$Stories {
  const factory Stories({
    int? available,
    String? collectionUri,
    List<StoriesItem>? items,
    int? returned,
  }) = _Stories;

  factory Stories.fromJson(Map<String, dynamic> json) =>
      _$StoriesFromJson(json);
}

@freezed
class StoriesItem with _$StoriesItem {
  const factory StoriesItem({
    String? resourceUri,
    String? name,
    //ItemType? type,
  }) = _StoriesItem;

  factory StoriesItem.fromJson(Map<String, dynamic> json) =>
      _$StoriesItemFromJson(json);
}

@freezed
class TextObject with _$TextObject {
  const factory TextObject({
    //TextObjectType? type,
    //Language? language,
    String? text,
  }) = _TextObject;

  factory TextObject.fromJson(Map<String, dynamic> json) =>
      _$TextObjectFromJson(json);
}
