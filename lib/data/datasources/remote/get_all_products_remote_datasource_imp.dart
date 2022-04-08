import 'package:interview_challenge/data/datasources/get_all_products_remote_datasource.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/testing_entries/test_entries.dart';

class GetAllProductsRemoteDataSourceImp
    implements GetAllProductsRemoteDataSource {
  @override
  Future<List<ProductDto>> call() async => TestEntries.products;
}
