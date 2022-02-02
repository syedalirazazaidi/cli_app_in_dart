class City {
  final String city;
  final double temperature;
  final String description;
  City({
    required this.city,
    required this.temperature,
    required this.description,
  });
  static City fromMap(Map<String, dynamic> json) {
    print('$json ====');
    return City(
      city: json['name'],
      temperature: json["main"]["temp"],
      description: json['weather'].first['description'],
    );
  }

  @override
  String toString() => '''
  City:$city
  Temperature:$temperature
  Weather description:$description
  ''';
}
