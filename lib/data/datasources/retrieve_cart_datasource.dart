import 'package:interview_challenge/data/dtos/cart_dto.dart';
import 'package:interview_challenge/domain/entities/cart_entity.dart';

abstract class RetrieveCartDataSource {
  Future<CartDto> call();
}
