import 'dart:convert';

import 'package:http/http.dart' as http;

import '../data/city_class.dart';

class WeatherService {
  // var city = 'karachi';
  // var key = '9992d178cf439a1c5e213b04853970bc';
  void getData(String word) async {
    final _apiUrl =
        'https://api.openweathermap.org/data/2.5/weather?q=$word&appid=9992d178cf439a1c5e213b04853970bc';
    final response = await http.get(Uri.parse(_apiUrl));
    print(response.body);
    if (response.statusCode != 200) {
      throw Exception(
          'some thing went wrong! status code:${response.statusCode}');
    }
    final City _weath = City.fromMap(jsonDecode(response.body));
    print('$_weath -------------');
  }
}
