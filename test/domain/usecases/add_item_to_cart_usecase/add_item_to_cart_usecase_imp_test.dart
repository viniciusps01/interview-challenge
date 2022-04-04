import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_challenge/core/injection/inject.dart';
import 'package:interview_challenge/data/dtos/cart_item_dto.dart';
import 'package:interview_challenge/domain/usecases/add_item_to_cart_usecase/add_item_to_cart_usecase.dart';
import 'package:interview_challenge/testing_entries/test_entries.dart';

void main() {
  late final AddItemToCartUseCase useCase;

  late final CartItemDto item;

  setUpAll(() {
    Inject.init();
    useCase = GetIt.I.get<AddItemToCartUseCase>();
    item = CartItemDto(product: TestEntries.products[0], quantity: 15);
  });

  test('AddItemToCartUseCase should exists', () {
    expect(useCase, isNotNull);
  });

  test('It should returns true', () async {
    final result = await useCase(item);
    expect(result, true);
  });
}
