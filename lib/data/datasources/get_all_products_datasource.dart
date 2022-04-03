import 'package:interview_challenge/domain/entities/product_entity.dart';

abstract class GetAllProductsDataSource {
  Future<List<ProductEntity>> call();
}
