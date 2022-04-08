import 'package:interview_challenge/data/dtos/cart_dto.dart';

abstract class RetrieveCartUseCase {
  Future<CartDto> call();
}
