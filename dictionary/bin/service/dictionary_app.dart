import 'dart:convert';

import 'package:http/http.dart' as http;

import '../data/dictionary_class.dart';

class DictionaryService {
  final _apiUrl = 'https://api.dictionaryapi.dev/api/v2/entries/en/';
  void getData(String word) async {
    final http.Response response = await http.get(Uri.parse('$_apiUrl${word}'));
    print(response.body);
    // final Dictionary _dict = Dictionary.fromMap(jsonDecode(response.body));
    // print(_dict.toString());
  }
}
