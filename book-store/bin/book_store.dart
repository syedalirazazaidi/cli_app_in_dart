import 'package:colorize/colorize.dart';
import 'dart:io';

import 'bill.dart';
import 'book.dart';
import 'shop.dart';

void main(List<String> arguments) {
  // Setting up shop with initial book stock
  final shop = Shop(name: "The book shop");
  shop.addBooks = [
    Book(
      id: '1',
      title: "Rich Dad Poor Dad",
      author: 'Robert T. Kiyosaki',
      price: 35.0,
    ),
    Book(
      id: '2',
      title: "A short history of the world",
      author: 'Christopher Lascelles',
      price: 30.0,
    ),
    Book(
      id: '3',
      title: "How to win friends and influence people",
      author: 'Dale Carnegie',
      price: 25.0,
    ),
    Book(
      id: '4',
      title: "Ikigai",
      author: 'Francesc Miralles and Hector Garcia',
      price: 37.0,
    ),
    Book(
      id: '5',
      title: "The essential Rumi",
      author: 'Coleman Barks',
      price: 50.0,
    ),
  ];
  openShop(shop);
}

void openShop(Shop shop) {
  final bill = Bill();
  while (true) {
    stdout.write(Colorize(
            'Please select: (v)iew items, (s)elect book, (c)heckout, (e)xit: ')
        .lightBlue());
    final line = stdin.readLineSync().toString();
    performAction(shop, bill, line);
  }
}

void performAction(Shop shop, Bill bill, String line) {
  switch (line) {
    case 's':
    case 'S':
      final book = showBookList(shop);
      if (book != null) {
        bill.addBook(book);
      }
      break;
    case 'v':
    case 'V':
      bill.viewBooks?.forEach((element) {
        print(Colorize('$element \n').lightGreen());
      });
      break;
    case 'c':
    case 'C':
      print(Colorize(bill.totalBill).black().bgLightCyan());
      break;
    case 'e':
    case 'E':
      exit(0);
  }
}

Book? showBookList(Shop shop) {
  print(Colorize('Available books:')..bgLightMagenta().black());

  shop.availableBooks.forEach((book) => print(book));

  String? userInput;
  while (true) {
    stdout.write(Colorize('Your choice: ')..bgLightMagenta().black());

    userInput = stdin.readLineSync();
    if (userInput!.trim().isNotEmpty) {
      break;
    }
  }

  Book? bookFound = shop.getBookById(userInput);
  if (bookFound is Book) {
    return bookFound;
  }

  print('Book not found.');
  return null;
}
