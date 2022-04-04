import 'package:interview_challenge/data/dtos/cart_item_dto.dart';

abstract class AddItemToCartUseCase {
  Future<bool> call(CartItemDto item);
}
