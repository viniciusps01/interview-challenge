import 'package:interview_challenge/data/dtos/cart_item_dto.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';

import '../add_product_to_cart_datasource.dart';

class AddProductToCartRemoteDataSourceImp implements AddItemToCartDataSource {
  @override
  Future<bool> call(ProductDto product) async {
    // TODO: call API
    return true;
  }
}
