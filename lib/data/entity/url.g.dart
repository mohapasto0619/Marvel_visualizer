// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Url _$$_UrlFromJson(Map<String, dynamic> json) => _$_Url(
      type: $enumDecodeNullable(_$UrlTypeEnumMap, json['type']),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_UrlToJson(_$_Url instance) => <String, dynamic>{
      'type': _$UrlTypeEnumMap[instance.type],
      'url': instance.url,
    };

const _$UrlTypeEnumMap = {
  UrlType.DETAIL: 'DETAIL',
  UrlType.WIKI: 'WIKI',
  UrlType.COMICLINK: 'COMICLINK',
};
