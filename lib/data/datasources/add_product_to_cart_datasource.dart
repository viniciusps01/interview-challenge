import 'package:interview_challenge/data/dtos/cart_item_dto.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';

abstract class AddItemToCartDataSource {
  Future<bool> call(ProductDto product);
}
