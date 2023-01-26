// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comics _$$_ComicsFromJson(Map<String, dynamic> json) => _$_Comics(
      available: json['available'] as int?,
      collectionUri: json['collectionUri'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : ComicsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: json['returned'] as int?,
    );

Map<String, dynamic> _$$_ComicsToJson(_$_Comics instance) => <String, dynamic>{
      'available': instance.available,
      'collectionUri': instance.collectionUri,
      'items': instance.items,
      'returned': instance.returned,
    };
