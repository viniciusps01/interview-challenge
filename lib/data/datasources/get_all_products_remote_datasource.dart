import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/domain/entities/product_entity.dart';

abstract class GetAllProductsRemoteDataSource {
  Future<List<ProductDto>> call();
}
