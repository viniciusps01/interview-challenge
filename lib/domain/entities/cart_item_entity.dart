import 'package:interview_challenge/domain/entities/product_entity.dart';

class CartItem {
  final ProductEntity product;
  final int quantity;

  CartItem({
    required this.product,
    required this.quantity,
  });
}
