import 'package:interview_challenge/data/datasources/add_product_to_cart_datasource.dart';
import 'package:interview_challenge/data/dtos/cart_item_dto.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/domain/repositories/add_product_to_cart_repository.dart';

class AddProductToCartRepositoryImp implements AddProductToCartRepository {
  final AddItemToCartDataSource _dataSource;

  AddProductToCartRepositoryImp(this._dataSource);

  @override
  Future<bool> call(ProductDto product) => _dataSource(product);
}
