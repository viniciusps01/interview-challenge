import 'package:flutter_test/flutter_test.dart';
import 'package:interview_challenge/data/datasources/remote/get_all_products_remote_datasource_imp.dart';
import 'package:interview_challenge/data/repositories/get_all_products_repository_imp.dart';
import 'package:interview_challenge/domain/entities/product_entity.dart';
import 'package:interview_challenge/domain/usecases/get_all_products_usecase/get_all_products_usecase.dart';
import 'package:interview_challenge/domain/usecases/get_all_products_usecase/get_all_products_usecase_imp.dart';

void main() {
  late GetAllProductsUseCase useCase;

  setUp(() {
    useCase = GetAllProductsUseCaseImp(
        GetAllProductsRepositoryImp(GetAllProductsRemoteDataSourceImp()));
  });

  test('GetAllProductsUseCase should exists', () {
    expect(useCase, isNotNull);
  });

  test('Should return Future<List<ProductEntity>>', () async {
    final result = await useCase();
    expect(result, isA<List<ProductEntity>>());
  });

  test('Should have 5 items', () async {
    final result = await useCase();
    expect(result.length, 5);
  });
}
