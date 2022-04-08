import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/domain/repositories/remove_product_from_cart_repository.dart';
import 'package:interview_challenge/domain/usecases/remove_product_from_cart_usecase/remove_product_from_cart_usecase.dart';

class RemoveProductFromCartUseCaseImp implements RemoveProductFromCartUseCase {
  final RemoveProductFromCartRepository _repository;

  RemoveProductFromCartUseCaseImp(this._repository);

  @override
  Future<bool> call(ProductDto product) => _repository(product);
}
