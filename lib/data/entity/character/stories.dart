import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_visualiser/data/entity/character/stories_item.dart';

part 'stories.freezed.dart';
part 'stories.g.dart';

@freezed
class Stories with _$Stories {
  const factory Stories({
    int? available,
    String? collectionUri,
    List<StoriesItem?>? items,
    int? returned,
  }) = _Stories;

  factory Stories.fromJson(Map<String, dynamic> json) =>
      _$StoriesFromJson(json);
}
