import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_challenge/core/injection/inject.dart';
import 'package:interview_challenge/domain/entities/product_entity.dart';
import 'package:interview_challenge/domain/repositories/get_all_products_repository.dart';

void main() {
  late GetAllProductsRepository repository;

  setUpAll(() => Inject.init());

  setUp(() {
    repository = GetIt.I.get<GetAllProductsRepository>();
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
