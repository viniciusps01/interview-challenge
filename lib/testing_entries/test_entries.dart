import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/domain/entities/product_entity.dart';

import './products.dart' as prod;

class TestEntries {
  static List<ProductDto> get products => prod.products;
}
