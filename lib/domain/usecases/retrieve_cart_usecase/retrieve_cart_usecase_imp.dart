import 'package:interview_challenge/data/dtos/cart_dto.dart';
import 'package:interview_challenge/domain/repositories/retrieve_cart_repository.dart';
import 'package:interview_challenge/domain/usecases/retrieve_cart_usecase/retrieve_cart_usecase.dart';

class RetrieveCartUseCaseImp implements RetrieveCartUseCase {
  final RetrieveCartRepository _repository;

  RetrieveCartUseCaseImp(this._repository);

  @override
  Future<CartDto> call() => _repository();
}
