import 'package:interview_challenge/data/datasources/clear_cart_datasource.dart';
import 'package:interview_challenge/domain/repositories/clear_cart_repository.dart';

class ClearCartRepositoryImp implements ClearCartRepositry {
  final ClearCartDataSource _dataSource;

  ClearCartRepositoryImp(this._dataSource);

  @override
  Future<bool> call() => _dataSource();
}
