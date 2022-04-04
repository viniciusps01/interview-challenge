import 'package:interview_challenge/data/dtos/cart_item_dto.dart';

abstract class AddItemToCartDataSource {
  Future<bool> call(CartItemDto item);
}
