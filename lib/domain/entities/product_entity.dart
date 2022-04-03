class ProductEntity {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  final int availableQuantity;

  ProductEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.availableQuantity,
  });

  bool get inStock => availableQuantity > 0;

  bool get outOfStock => !inStock;
}
