import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_visualiser/data/entity/character/data.dart';
import 'dart:convert';
part 'marvel_response.freezed.dart';
part 'marvel_response.g.dart';

MarvelResponse? marvelResponseFromJson(String str) =>
    MarvelResponse.fromJson(json.decode(str));

String marvelResponseToJson(MarvelResponse? data) =>
    json.encode(data!.toJson());

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
