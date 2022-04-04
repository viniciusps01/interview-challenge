import 'package:interview_challenge/data/datasources/get_all_products_remote_datasource.dart';

import '../../domain/entities/product_entity.dart';
import '../../domain/repositories/get_all_products_repository.dart';

class GetAllProductsRepositoryImp implements GetAllProductsRepository {
  final GetAllProductsRemoteDataSource _dataSource;

  GetAllProductsRepositoryImp(this._dataSource);

  @override
  Future<List<ProductEntity>> call() => _dataSource();
}
