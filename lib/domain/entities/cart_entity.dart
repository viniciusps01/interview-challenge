import 'package:interview_challenge/data/dtos/cart_item_dto.dart';

class CartEntity {
  final String id;
  final List<CartItemDto> items;

  CartEntity({
    required this.id,
    required this.items,
  });
}
