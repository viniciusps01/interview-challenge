import 'package:interview_challenge/data/datasources/add_item_to_cart_datasource.dart';
import 'package:interview_challenge/data/dtos/cart_item_dto.dart';
import 'package:interview_challenge/domain/repositories/add_item_to_cart_repository.dart';

class AddItemToCartRepositoryImp implements AddItemToCartRepository {
  final AddItemToCartDataSource _dataSource;

  AddItemToCartRepositoryImp(this._dataSource);

  @override
  Future<bool> call(CartItemDto item) => _dataSource(item);
}
