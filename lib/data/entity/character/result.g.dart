// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
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
      title: json['title'] as String?,
      startYear: json['startYear'] as int?,
      endYear: json['endYear'] as int?,
      rating: json['rating'] as String?,
      type: json['type'] as String?,
      digitalId: json['digitalId'] as int?,
      issueNumber: json['issueNumber'] as int?,
      isbn: json['isbn'] as String?,
      upc: json['upc'] as String?,
      diamondCode: json['diamondCode'] as String?,
      ean: json['ean'] as String?,
      issn: json['issn'] as String?,
      pageCount: json['pageCount'] as int?,
      collections: json['collections'] as List<dynamic>?,
      collectedIssues: json['collectedIssues'] as List<dynamic>?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Thumbnail.fromJson(e as Map<String, dynamic>))
          .toList(),
      urls: (json['urls'] as List<dynamic>?)
          ?.map((e) => Url.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'modified': instance.modified,
      'thumbnail': instance.thumbnail,
      'resourceUri': instance.resourceUri,
      'comics': instance.comics,
      'series': instance.series,
      'stories': instance.stories,
      'events': instance.events,
      'title': instance.title,
      'startYear': instance.startYear,
      'endYear': instance.endYear,
      'rating': instance.rating,
      'type': instance.type,
      'digitalId': instance.digitalId,
      'issueNumber': instance.issueNumber,
      'isbn': instance.isbn,
      'upc': instance.upc,
      'diamondCode': instance.diamondCode,
      'ean': instance.ean,
      'issn': instance.issn,
      'pageCount': instance.pageCount,
      'collections': instance.collections,
      'collectedIssues': instance.collectedIssues,
      'images': instance.images,
      'urls': instance.urls,
    };
