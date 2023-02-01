import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_visualiser/data/entity/character/result.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  const factory Data({
    int? offset,
    int? limit,
    int? total,
    int? count,
    required List<Result> results,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
