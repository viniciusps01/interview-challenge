import 'package:interview_challenge/data/datasources/get_all_products_datasource.dart';
import 'package:interview_challenge/domain/entities/product_entity.dart';
import 'package:interview_challenge/testing_entries/test_entries.dart';

class GetAllProductsRemoteDataSourceImp implements GetAllProductsDataSource {
  @override
  Future<List<ProductEntity>> call() async => TestEntries.products;
}
