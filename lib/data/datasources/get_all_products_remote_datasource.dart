import 'package:interview_challenge/domain/entities/product_entity.dart';

abstract class GetAllProductsRemoteDataSource {
  Future<List<ProductEntity>> call();
}
