import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  var city = 'karachi';
  var key = '9992d178cf439a1c5e213b04853970bc';
  final _apiUrl =
      'https://api.openweathermap.org/data/2.5/weather?q=lahore&appid=9992d178cf439a1c5e213b04853970bc';
  void getData() async {
    final response = await http.get(Uri.parse(_apiUrl));
    print(response.body);
  }

  getData();
}


// apikey='9992d178cf439a1c5e213b04853970bc';

// api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}