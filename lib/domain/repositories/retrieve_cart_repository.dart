import 'package:interview_challenge/data/dtos/cart_dto.dart';

abstract class RetrieveCartRepository {
  Future<CartDto> call();
}
