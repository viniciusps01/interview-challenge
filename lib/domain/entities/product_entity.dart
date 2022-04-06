import 'dart:ui';

class ProductEntity {
  final String id;
  final String name;
  final String colorName;
  final String description;
  final List<String> categories;
  final String imageUrl;
  final double price;
  final int availableQuantity;

  ProductEntity({
    required this.id,
    required this.name,
    required this.colorName,
    required this.description,
    required this.categories,
    required this.imageUrl,
    required this.price,
    required this.availableQuantity,
  });

  String get title => name;

  bool get inStock => availableQuantity > 0;

  bool get outOfStock => !inStock;
}
