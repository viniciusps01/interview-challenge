import 'package:interview_challenge/data/datasources/remove_product_from_cart_datasource.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';

class RemoveProductFromCartRemoteDataSourceImp
    implements RemoveProductFromCartDataSource {
  @override
  Future<bool> call(ProductDto product) async {
    // TODO: call API
    return true;
  }
}
