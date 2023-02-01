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
    String? title,
    String? description,
    String? resourceUri,
    List<Url>? urls,
    String? modified,
    DateTime? start,
    DateTime? end,
    Thumbnail? thumbnail,
    Creators? creators,
    Characters? characters,
    Stories? stories,
    Characters? comics,
    Characters? series,
    Next? next,
    Next? previous,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Characters with _$Characters {
  const factory Characters({
    int? available,
    String? collectionUri,
    List<Next>? items,
    int? returned,
  }) = _Characters;

  factory Characters.fromJson(Map<String, dynamic> json) =>
      _$CharactersFromJson(json);
}

@freezed
class Next with _$Next {
  const factory Next({
    String? resourceUri,
    String? name,
  }) = _Next;

  factory Next.fromJson(Map<String, dynamic> json) => _$NextFromJson(json);
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
    String? role,
  }) = _CreatorsItem;

  factory CreatorsItem.fromJson(Map<String, dynamic> json) =>
      _$CreatorsItemFromJson(json);
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
    //Type? type,
  }) = _StoriesItem;

  factory StoriesItem.fromJson(Map<String, dynamic> json) =>
      _$StoriesItemFromJson(json);
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
class Url with _$Url {
  const factory Url({
    String? type,
    String? url,
  }) = _Url;

  factory Url.fromJson(Map<String, dynamic> json) => _$UrlFromJson(json);
}
