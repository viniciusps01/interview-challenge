import 'package:interview_challenge/domain/entities/product_entity.dart';

abstract class GetAllProductsRepository {
  Future<List<ProductEntity>> call();
}
