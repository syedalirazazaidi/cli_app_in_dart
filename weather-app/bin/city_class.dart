class City {
  final String city;
  final String temperature;
  final String description;
  City({
    required this.city,
    required this.temperature,
    required this.description,
  });
  static City fromMap(List<dynamic> json) {
    return City(
        // word: json.first['word'],
        // meaning: json.first['meanings'].first['definitions'].first['definition'],
        // sentence: json.first['meanings'].first['definitions'].first['example'],
        );
  }
}
