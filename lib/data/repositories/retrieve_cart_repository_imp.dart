import 'package:interview_challenge/data/datasources/retrieve_cart_datasource.dart';
import 'package:interview_challenge/data/dtos/cart_dto.dart';

import '../../domain/repositories/retrieve_cart_repository.dart';

class RetrieveCartRepositoryImp implements RetrieveCartRepository {
  final RetrieveCartDataSource dataSource;

  RetrieveCartRepositoryImp(this.dataSource);

  @override
  Future<CartDto> call() async => dataSource();
}
