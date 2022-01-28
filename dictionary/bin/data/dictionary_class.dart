class Dictionary {
  final String word;
  final String sentence;
  final String meaning;
  Dictionary({
    required this.word,
    required this.meaning,
    required this.sentence,
  });
  static Dictionary fromMap(List<dynamic> json) {
    return Dictionary(
      word: json.first['word'],
      meaning: json.first['meanings'].first['definations'].first['defination'],
      sentence: json.first['meanings'].first['definations'].first['example'],
    );
  }

  @override
  String toString() => '''Word:$word
  Meaning:$meaning
  Sentences:$sentence
  ''';
}
