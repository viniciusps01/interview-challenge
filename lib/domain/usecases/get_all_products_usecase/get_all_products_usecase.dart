import 'package:interview_challenge/domain/entities/product_entity.dart';

abstract class GetAllProductsUseCase {
  Future<List<ProductEntity>> call();
}
