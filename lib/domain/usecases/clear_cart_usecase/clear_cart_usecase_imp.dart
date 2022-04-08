import 'package:interview_challenge/domain/repositories/clear_cart_repository.dart';
import 'package:interview_challenge/domain/usecases/clear_cart_usecase/clear_cart_usecase.dart';

class ClearCartUseCaseImp implements ClearCartUseCase {
  final ClearCartRepository _repository;

  ClearCartUseCaseImp(this._repository);

  @override
  Future<bool> call()=>_repository();

}