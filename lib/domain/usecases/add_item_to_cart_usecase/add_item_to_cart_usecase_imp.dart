import 'package:interview_challenge/data/dtos/cart_item_dto.dart';
import 'package:interview_challenge/domain/repositories/add_item_to_cart_repository.dart';
import 'package:interview_challenge/domain/usecases/add_item_to_cart_usecase/add_item_to_cart_usecase.dart';

class AddItemToCartUseCaseImp implements AddItemToCartUseCase {
  final AddItemToCartRepository _repository;

  AddItemToCartUseCaseImp(this._repository);

  @override
  Future<bool> call(CartItemDto item) => _repository(item);
}
