import 'package:get_it/get_it.dart';
import 'package:interview_challenge/data/datasources/retrieve_cart_datasource.dart';
import 'package:interview_challenge/data/dtos/cart_dto.dart';

class RetrieveCartRemoteDataSourceImp implements RetrieveCartDataSource {
  @override
  Future<CartDto> call() async => GetIt.I.get<CartDto>();
}
