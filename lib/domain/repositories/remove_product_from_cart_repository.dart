import 'package:interview_challenge/data/dtos/product_dto.dart';

abstract class RemoveProductFromCartRepository {
  Future<bool> call(ProductDto product);
}
