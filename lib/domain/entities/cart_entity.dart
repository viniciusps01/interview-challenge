import 'package:interview_challenge/data/dtos/cart_item_dto.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';

class CartEntity {
  final String? id;
  late final List<CartItemDto> _items;

  CartEntity({
    this.id,
    List<CartItemDto>? items,
  }) {
    _items = items ?? [];
  }

  int get productsQuantity =>
      items.fold(0, (prev, element) => prev + element.quantity);

  double get totalAmount => items.fold(
      0, (prev, element) => prev + element.quantity * element.product.price);

  int get itemsQuanity => items.length;

  List<CartItemDto> get items => [..._items];

  void addProduct(ProductDto product) {
    final index = _getItemIndex(product.id);
    final quantity = index == -1 ? 1 : _items[index].quantity + 1;
    final item = CartItemDto(product: product, quantity: quantity);

    if (index != -1) {
      _items.removeAt(index);
    }

    _items.add(item);
  }

  void removeProduct(String productId) {
    final index = _getItemIndex(productId);

    if (index == -1) return;

    final product = _items[index].product;
    final quantity = _items[index].quantity - 1;

    _items.removeAt(index);
    if (quantity == 0) return;

    final item = CartItemDto(product: product, quantity: quantity);
    _items.add(item);
  }

  void clearCart() => _items.clear();

  int _getItemIndex(String productId) =>
      _items.indexWhere((item) => item.product.id == productId);
}
