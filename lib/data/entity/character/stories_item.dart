import 'package:freezed_annotation/freezed_annotation.dart';

part 'stories_item.freezed.dart';
part 'stories_item.g.dart';

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
