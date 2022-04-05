import 'package:interview_challenge/data/datasources/get_all_products_remote_datasource.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';
import '../../domain/repositories/get_all_products_repository.dart';

class GetAllProductsRepositoryImp implements GetAllProductsRepository {
  final GetAllProductsRemoteDataSource _dataSource;

  GetAllProductsRepositoryImp(this._dataSource);

  @override
  Future<List<ProductDto>> call() => _dataSource();
}
