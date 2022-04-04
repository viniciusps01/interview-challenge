import 'package:interview_challenge/data/dtos/product_dto.dart';

class CartItemEntity {
  final ProductDto product;
  final int quantity;

  CartItemEntity({
    required this.product,
    required this.quantity,
  });
}
