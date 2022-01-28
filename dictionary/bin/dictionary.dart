import 'dart:io';

import 'data/dictionary_class.dart';
import 'service/dictionary_app.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Missing Arguments: Syntex=>dart run dictionar_app $arguments');
    exit(1);
  }
  // TODO :call services function with argument to get dictionary data
  final DictionaryService _dictionary = DictionaryService();
  _dictionary.getData(arguments.first);
}
