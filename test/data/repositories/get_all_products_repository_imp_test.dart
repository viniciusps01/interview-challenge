import 'package:flutter_test/flutter_test.dart';
import 'package:interview_challenge/data/datasources/remote/get_all_products_remote_datasource_imp.dart';
import 'package:interview_challenge/data/repositories/get_all_products_repository_imp.dart';
import 'package:interview_challenge/domain/entities/product_entity.dart';

void main() {
  late GetAllProductsRepositoryImp repository;

  setUp(() {
    repository =
        GetAllProductsRepositoryImp(GetAllProductsRemoteDataSourceImp());
  });

  test('GetAllProductsRepository should exists', () {
    expect(repository, isNotNull);
  });

  test('Should return Future<List<ProductEntity>>', () async {
    final result = await repository();
    expect(result, isA<List<ProductEntity>>());
  });

  test('Should have 5 items', () async {
    final result = await repository();
    expect(result.length, 5);
  });
}
