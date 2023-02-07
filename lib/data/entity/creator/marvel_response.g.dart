// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marvel_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarvelResponse _$$_MarvelResponseFromJson(Map<String, dynamic> json) =>
    _$_MarvelResponse(
      code: json['code'] as int?,
      status: json['status'] as String?,
      copyright: json['copyright'] as String?,
      attributionText: json['attributionText'] as String?,
      attributionHtml: json['attributionHtml'] as String?,
      etag: json['etag'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MarvelResponseToJson(_$_MarvelResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'copyright': instance.copyright,
      'attributionText': instance.attributionText,
      'attributionHtml': instance.attributionHtml,
      'etag': instance.etag,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      offset: json['offset'] as int?,
      limit: json['limit'] as int?,
      total: json['total'] as int?,
      count: json['count'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      id: json['id'] as int?,
      firstName: json['firstName'] as String?,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String?,
      suffix: json['suffix'] as String?,
      fullName: json['fullName'] as String?,
      modified: json['modified'] as String?,
      thumbnail: json['thumbnail'] == null
          ? null
          : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
      resourceUri: json['resourceUri'] as String?,
      comics: json['comics'] == null
          ? null
          : Comics.fromJson(json['comics'] as Map<String, dynamic>),
      series: json['series'] == null
          ? null
          : Comics.fromJson(json['series'] as Map<String, dynamic>),
      stories: json['stories'] == null
          ? null
          : Stories.fromJson(json['stories'] as Map<String, dynamic>),
      events: json['events'] == null
          ? null
          : Comics.fromJson(json['events'] as Map<String, dynamic>),
      urls: (json['urls'] as List<dynamic>?)
          ?.map((e) => Url.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'suffix': instance.suffix,
      'fullName': instance.fullName,
      'modified': instance.modified,
      'thumbnail': instance.thumbnail,
      'resourceUri': instance.resourceUri,
      'comics': instance.comics,
      'series': instance.series,
      'stories': instance.stories,
      'events': instance.events,
      'urls': instance.urls,
    };

_$_Comics _$$_ComicsFromJson(Map<String, dynamic> json) => _$_Comics(
      available: json['available'] as int?,
      collectionUri: json['collectionUri'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ComicsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: json['returned'] as int?,
    );

Map<String, dynamic> _$$_ComicsToJson(_$_Comics instance) => <String, dynamic>{
      'available': instance.available,
      'collectionUri': instance.collectionUri,
      'items': instance.items,
      'returned': instance.returned,
    };

_$_ComicsItem _$$_ComicsItemFromJson(Map<String, dynamic> json) =>
    _$_ComicsItem(
      resourceUri: json['resourceUri'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_ComicsItemToJson(_$_ComicsItem instance) =>
    <String, dynamic>{
      'resourceUri': instance.resourceUri,
      'name': instance.name,
    };

_$_Stories _$$_StoriesFromJson(Map<String, dynamic> json) => _$_Stories(
      available: json['available'] as int?,
      collectionUri: json['collectionUri'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => StoriesItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: json['returned'] as int?,
    );

Map<String, dynamic> _$$_StoriesToJson(_$_Stories instance) =>
    <String, dynamic>{
      'available': instance.available,
      'collectionUri': instance.collectionUri,
      'items': instance.items,
      'returned': instance.returned,
    };

_$_StoriesItem _$$_StoriesItemFromJson(Map<String, dynamic> json) =>
    _$_StoriesItem(
      resourceUri: json['resourceUri'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_StoriesItemToJson(_$_StoriesItem instance) =>
    <String, dynamic>{
      'resourceUri': instance.resourceUri,
      'name': instance.name,
    };

_$_Thumbnail _$$_ThumbnailFromJson(Map<String, dynamic> json) => _$_Thumbnail(
      path: json['path'] as String?,
      extension: json['extension'] as String?,
    );

Map<String, dynamic> _$$_ThumbnailToJson(_$_Thumbnail instance) =>
    <String, dynamic>{
      'path': instance.path,
      'extension': instance.extension,
    };

_$_Url _$$_UrlFromJson(Map<String, dynamic> json) => _$_Url(
      type: json['type'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_UrlToJson(_$_Url instance) => <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
    };
