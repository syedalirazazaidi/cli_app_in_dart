import 'dart:io';

import 'service/weather_app.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Missing Arguments: Syntex=>dart run weather_app $arguments');
    exit(1);
  }

  final WeatherService weather = WeatherService();
  weather.getData(arguments.first);
  // final _weather = WeatherService();
}


// apikey='9992d178cf439a1c5e213b04853970bc';

// api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}