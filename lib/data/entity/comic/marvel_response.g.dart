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
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
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
      digitalId: json['digitalId'] as int?,
      title: json['title'] as String?,
      issueNumber: json['issueNumber'] as int?,
      description: json['description'] as String?,
      modified: json['modified'] as String?,
      isbn: json['isbn'] as String?,
      upc: json['upc'] as String?,
      diamondCode: json['diamondCode'] as String?,
      ean: json['ean'] as String?,
      issn: json['issn'] as String?,
      pageCount: json['pageCount'] as int?,
      textObjects: (json['textObjects'] as List<dynamic>?)
          ?.map((e) => TextObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      resourceUri: json['resourceUri'] as String?,
      series: json['series'] == null
          ? null
          : Series.fromJson(json['series'] as Map<String, dynamic>),
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => Series.fromJson(e as Map<String, dynamic>))
          .toList(),
      collections: json['collections'] as List<dynamic>?,
      collectedIssues: json['collectedIssues'] as List<dynamic>?,
      dates: (json['dates'] as List<dynamic>?)
          ?.map((e) => Date.fromJson(e as Map<String, dynamic>))
          .toList(),
      prices: (json['prices'] as List<dynamic>?)
          ?.map((e) => Price.fromJson(e as Map<String, dynamic>))
          .toList(),
      thumbnail: json['thumbnail'] == null
          ? null
          : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Thumbnail.fromJson(e as Map<String, dynamic>))
          .toList(),
      creators: json['creators'] == null
          ? null
          : Creators.fromJson(json['creators'] as Map<String, dynamic>),
      characters: json['characters'] == null
          ? null
          : Characters.fromJson(json['characters'] as Map<String, dynamic>),
      stories: json['stories'] == null
          ? null
          : Stories.fromJson(json['stories'] as Map<String, dynamic>),
      events: json['events'] == null
          ? null
          : Characters.fromJson(json['events'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'id': instance.id,
      'digitalId': instance.digitalId,
      'title': instance.title,
      'issueNumber': instance.issueNumber,
      'description': instance.description,
      'modified': instance.modified,
      'isbn': instance.isbn,
      'upc': instance.upc,
      'diamondCode': instance.diamondCode,
      'ean': instance.ean,
      'issn': instance.issn,
      'pageCount': instance.pageCount,
      'textObjects': instance.textObjects,
      'resourceUri': instance.resourceUri,
      'series': instance.series,
      'variants': instance.variants,
      'collections': instance.collections,
      'collectedIssues': instance.collectedIssues,
      'dates': instance.dates,
      'prices': instance.prices,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
      'creators': instance.creators,
      'characters': instance.characters,
      'stories': instance.stories,
      'events': instance.events,
    };

_$_Characters _$$_CharactersFromJson(Map<String, dynamic> json) =>
    _$_Characters(
      available: json['available'] as int?,
      collectionUri: json['collectionUri'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Series.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: json['returned'] as int?,
    );

Map<String, dynamic> _$$_CharactersToJson(_$_Characters instance) =>
    <String, dynamic>{
      'available': instance.available,
      'collectionUri': instance.collectionUri,
      'items': instance.items,
      'returned': instance.returned,
    };

_$_Series _$$_SeriesFromJson(Map<String, dynamic> json) => _$_Series(
      resourceUri: json['resourceUri'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_SeriesToJson(_$_Series instance) => <String, dynamic>{
      'resourceUri': instance.resourceUri,
      'name': instance.name,
    };

_$_Creators _$$_CreatorsFromJson(Map<String, dynamic> json) => _$_Creators(
      available: json['available'] as int?,
      collectionUri: json['collectionUri'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CreatorsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: json['returned'] as int?,
    );

Map<String, dynamic> _$$_CreatorsToJson(_$_Creators instance) =>
    <String, dynamic>{
      'available': instance.available,
      'collectionUri': instance.collectionUri,
      'items': instance.items,
      'returned': instance.returned,
    };

_$_CreatorsItem _$$_CreatorsItemFromJson(Map<String, dynamic> json) =>
    _$_CreatorsItem(
      resourceUri: json['resourceUri'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_CreatorsItemToJson(_$_CreatorsItem instance) =>
    <String, dynamic>{
      'resourceUri': instance.resourceUri,
      'name': instance.name,
    };

_$_Date _$$_DateFromJson(Map<String, dynamic> json) => _$_Date(
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$_DateToJson(_$_Date instance) => <String, dynamic>{
      'date': instance.date,
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

_$_Price _$$_PriceFromJson(Map<String, dynamic> json) => _$_Price(
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PriceToJson(_$_Price instance) => <String, dynamic>{
      'price': instance.price,
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

_$_TextObject _$$_TextObjectFromJson(Map<String, dynamic> json) =>
    _$_TextObject(
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$_TextObjectToJson(_$_TextObject instance) =>
    <String, dynamic>{
      'text': instance.text,
    };
