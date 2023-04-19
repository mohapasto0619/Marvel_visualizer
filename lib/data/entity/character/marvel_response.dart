import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_visualiser/data/entity/character/data.dart';
import 'dart:convert';
part 'marvel_response.freezed.dart';
part 'marvel_response.g.dart';

CharacterMarvelResponse? marvelResponseFromJson(String str) =>
    CharacterMarvelResponse.fromJson(json.decode(str));

String marvelResponseToJson(CharacterMarvelResponse? data) =>
    json.encode(data!.toJson());

@freezed
class CharacterMarvelResponse with _$CharacterMarvelResponse {
  const factory CharacterMarvelResponse({
    int? code,
    String? status,
    String? copyright,
    String? attributionText,
    String? attributionHtml,
    String? etag,
    Data? data,
  }) = _MarvelResponse;

  factory CharacterMarvelResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterMarvelResponseFromJson(json);
}
