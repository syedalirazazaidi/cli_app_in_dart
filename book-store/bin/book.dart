class Book {
  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.price,
  });

  final String id;
  final String title;
  final String author;
  double price;

  String getDetails() => '(${id}) ${title} (${author}) - (Rs.${price})';
}
