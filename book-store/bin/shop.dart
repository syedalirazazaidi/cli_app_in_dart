import 'book.dart';
import 'package:collection/collection.dart';

class Shop {
  Shop({required this.name});

  final name;
  final List<Book> _books = [];
  List<String> get availableBooks {
    return _books.map((book) => book.getDetails()).toList();
  }

  set addBooks(List<Book> newStock) => _books.addAll(newStock);

  Book? getBookById(String id) =>
      _books.firstWhereOrNull((book) => book.id == (id));
}
