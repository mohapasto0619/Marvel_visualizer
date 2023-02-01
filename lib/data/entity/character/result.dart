import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_visualiser/data/entity/character/comic.dart';
import 'package:marvel_visualiser/data/entity/character/stories.dart';
import 'package:marvel_visualiser/data/entity/character/thumbnail.dart';
import 'package:marvel_visualiser/data/entity/character/url.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@freezed
class Result with _$Result {
  const factory Result({
    int? id,
    String? name,
    String? description,
    String? modified,
    Thumbnail? thumbnail,
    String? resourceUri,
    Comics? comics,
    Comics? series,
    Stories? stories,
    Comics? events,
    String? title,
    int? startYear,
    int? endYear,
    String? rating,
    String? type,
    int? digitalId,
    int? issueNumber,
    //VariantDescription? variantDescription,
    String? isbn,
    String? upc,
    String? diamondCode,
    String? ean,
    String? issn,
    //Format? format,
    int? pageCount,
    //List<Url>? urls,
    List<dynamic>? collections,
    List<dynamic>? collectedIssues,
    List<Thumbnail>? images,
    List<Url>? urls,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
