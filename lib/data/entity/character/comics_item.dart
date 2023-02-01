import 'package:freezed_annotation/freezed_annotation.dart';

part 'comics_item.freezed.dart';
part 'comics_item.g.dart';

@freezed
class ComicsItem with _$ComicsItem {
  const factory ComicsItem({
    String? resourceUri,
    String? name,
  }) = _ComicsItem;

  factory ComicsItem.fromJson(Map<String, dynamic> json) =>
      _$ComicsItemFromJson(json);
}
