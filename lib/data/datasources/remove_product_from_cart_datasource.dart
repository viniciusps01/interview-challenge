import 'package:interview_challenge/data/dtos/product_dto.dart';

abstract class RemoveProductFromCartDataSource {
  Future<bool> call(ProductDto product);
}
