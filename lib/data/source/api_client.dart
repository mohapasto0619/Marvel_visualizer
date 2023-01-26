import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';
import 'package:marvel_visualiser/data/entity/marvel_response.dart';

const baseUrl = 'https://gateway.marvel.com/v1/';
const publicApiKey = '20e4d27ec981dc6fc91249da6265a01b';
const privateApiKey = '047279423bf2733fb668332406baadfed4776a15';

class ApiClient {
  Future<MarvelResponse?> getCharacters(
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
      return MarvelResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("error can't fetch characters");
    }
  }
}

String generateMd5(String input) {
  return md5.convert(utf8.encode(input)).toString();
}
