import 'package:interview_challenge/data/dtos/cart_item_dto.dart';

import '../add_item_to_cart_datasource.dart';

class AddItemToCartRemoteDataSourceImp implements AddItemToCartDataSource {
  @override
  Future<bool> call(CartItemDto item) async {
    // TODO: call API
    return true;
  }
}
