import 'package:interview_challenge/data/datasources/remove_product_from_cart_datasource.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/domain/repositories/remove_product_from_cart_repository.dart';

class RemoveProductFromCartRepositoryImp
    implements RemoveProductFromCartRepository {
  final RemoveProductFromCartDataSource _dataSource;

  RemoveProductFromCartRepositoryImp(this._dataSource);

  @override
  Future<bool> call(ProductDto product) => _dataSource(product);
}
