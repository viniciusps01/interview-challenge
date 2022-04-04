import 'package:interview_challenge/data/dtos/product_dto.dart';

abstract class RemoveProductFromCartUseCase {
  Future<bool> call(ProductDto product);
}
