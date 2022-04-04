import 'package:interview_challenge/data/dtos/cart_dto.dart';
import 'package:interview_challenge/data/dtos/cart_item_dto.dart';

abstract class AddItemToCartRepository {
  Future<bool> call(CartItemDto item);
}
