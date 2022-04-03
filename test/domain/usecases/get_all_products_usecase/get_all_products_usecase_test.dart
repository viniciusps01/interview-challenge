import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_challenge/core/injection/inject.dart';
import 'package:interview_challenge/domain/entities/product_entity.dart';
import 'package:interview_challenge/domain/usecases/get_all_products_usecase/get_all_products_usecase.dart';

void main() {
  late GetAllProductsUseCase useCase;

  setUpAll(() => Inject.init());

  setUp(() {
    useCase = GetIt.I<GetAllProductsUseCase>();
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
