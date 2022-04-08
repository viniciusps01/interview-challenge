import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_challenge/core/injection/inject.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/domain/usecases/add_product_to_cart_usecase/add_product_to_cart_usecase.dart';
import 'package:interview_challenge/testing_entries/test_entries.dart';

void main() {
  late final AddProductToCartUseCase useCase;

  late final ProductDto product;

  setUpAll(() {
    Inject.init();
    useCase = GetIt.I.get<AddProductToCartUseCase>();
    product = TestEntries.products[0];
  });

  test('AddItemToCartUseCase should exists', () {
    expect(useCase, isNotNull);
  });

  test('It should returns true', () async {
    final result = await useCase(product);
    expect(result, true);
  });
}
