import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_visualiser/data/entity/comics_item.dart';

part 'comic.freezed.dart';
part 'comic.g.dart';

@freezed
class Comics with _$Comics {
  const factory Comics({
    int? available,
    String? collectionUri,
    List<ComicsItem?>? items,
    int? returned,
  }) = _Comics;

  factory Comics.fromJson(Map<String, dynamic> json) => _$ComicsFromJson(json);
}
