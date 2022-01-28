import 'dart:io';

import 'service/dictionary_app.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Missing Arguments: Syntex=>dart run dictionar_app $arguments');
    exit(1);
  }
  final DictionaryService _dictionary = DictionaryService();
  _dictionary.getData(arguments.first);
}
