import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';
import 'package:marvel_visualiser/data/entity/character/marvel_response.dart'
    as character;
import 'package:marvel_visualiser/data/entity/comic/marvel_response.dart'
    as comic;
import 'package:marvel_visualiser/data/entity/serie/marvel_response.dart'
    as serie;
import 'package:marvel_visualiser/data/entity/event/marvel_response.dart'
    as event;

const baseUrl = 'https://gateway.marvel.com/v1/';
const publicApiKey = '20e4d27ec981dc6fc91249da6265a01b';
const privateApiKey = '047279423bf2733fb668332406baadfed4776a15';

class ApiClient {
  Future<character.MarvelResponse?> getCharacters(
      {String baseUrl = baseUrl,
      Map<String, String>? headers,
      String query = '',
      int offset = 0}) async {
    final timeStamp = DateTime.now();
    final relativeUrl =
        'public/characters?ts=$timeStamp&apikey=$publicApiKey&hash=${generateMd5('$timeStamp$privateApiKey$publicApiKey')}&offset=$offset';
    final relativeUrlWithQuery =
        'public/characters?ts=$timeStamp&apikey=$publicApiKey&hash=${generateMd5('$timeStamp$privateApiKey$publicApiKey')}&nameStartsWith=$query&offset=$offset';
    final response = await http.get(
        Uri.parse((query.isNotEmpty)
            ? '$baseUrl$relativeUrlWithQuery'
            : '$baseUrl$relativeUrl'),
        headers: headers);

    if (response.statusCode == 200) {
      return character.MarvelResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("error can't fetch characters");
    }
  }

  Future<character.MarvelResponse?> getCharacter(
      {required int id,
      String baseUrl = baseUrl,
      Map<String, String>? headers,
      int offset = 0}) async {
    final timeStamp = DateTime.now();
    final relativeUrl =
        'public/characters/$id?ts=$timeStamp&apikey=$publicApiKey&hash=${generateMd5('$timeStamp$privateApiKey$publicApiKey')}';
    final response =
        await http.get(Uri.parse('$baseUrl$relativeUrl'), headers: headers);
    if (response.statusCode == 200) {
      return character.MarvelResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("error can't fetch characters");
    }
  }

  Future<comic.MarvelResponse?> getComicsCollectionForCharacter(
      {required String collectionUri,
      Map<String, String>? headers,
      int offset = 0}) async {
    final timeStamp = DateTime.now();
    final keys =
        '?ts=$timeStamp&apikey=$publicApiKey&hash=${generateMd5('$timeStamp$privateApiKey$publicApiKey')}';
    final response =
        await http.get(Uri.parse('$collectionUri$keys'), headers: headers);
    if (response.statusCode == 200) {
      return comic.MarvelResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("error can't fetch characters");
    }
  }

  Future<serie.MarvelResponse?> getSeriesCollectionForCharacter(
      {required String collectionUri,
      Map<String, String>? headers,
      int offset = 0}) async {
    final timeStamp = DateTime.now();
    final keys =
        '?ts=$timeStamp&apikey=$publicApiKey&hash=${generateMd5('$timeStamp$privateApiKey$publicApiKey')}';
    final response =
        await http.get(Uri.parse('$collectionUri$keys'), headers: headers);
    if (response.statusCode == 200) {
      return serie.MarvelResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("error can't fetch characters");
    }
  }

  Future<serie.MarvelResponse?> getStoriesCollectionForCharacter(
      {required String collectionUri,
      Map<String, String>? headers,
      int offset = 0}) async {
    final timeStamp = DateTime.now();
    final keys =
        '?ts=$timeStamp&apikey=$publicApiKey&hash=${generateMd5('$timeStamp$privateApiKey$publicApiKey')}';
    final response =
        await http.get(Uri.parse('$collectionUri$keys'), headers: headers);
    if (response.statusCode == 200) {
      return serie.MarvelResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("error can't fetch characters");
    }
  }

  Future<event.MarvelResponse?> getEventsCollectionForCharacter(
      {required String collectionUri,
      Map<String, String>? headers,
      int offset = 0}) async {
    final timeStamp = DateTime.now();
    final keys =
        '?ts=$timeStamp&apikey=$publicApiKey&hash=${generateMd5('$timeStamp$privateApiKey$publicApiKey')}';
    final response =
        await http.get(Uri.parse('$collectionUri$keys'), headers: headers);
    if (response.statusCode == 200) {
      return event.MarvelResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("error can't fetch characters");
    }
  }
}

String generateMd5(String input) {
  return md5.convert(utf8.encode(input)).toString();
}
