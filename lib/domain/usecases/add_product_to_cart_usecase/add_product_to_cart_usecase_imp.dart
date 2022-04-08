import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/domain/repositories/add_product_to_cart_repository.dart';

import 'add_product_to_cart_usecase.dart';

class AddProductToCartUseCaseImp implements AddProductToCartUseCase {
  final AddProductToCartRepository _repository;

  AddProductToCartUseCaseImp(this._repository);

  @override
  Future<bool> call(ProductDto product) => _repository(product);
}
