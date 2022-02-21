class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final bool isFavourite;
  final String image;
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    this.isFavourite = false,
  });
}
