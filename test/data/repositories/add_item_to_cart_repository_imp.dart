import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_challenge/core/injection/inject.dart';
import 'package:interview_challenge/data/dtos/cart_item_dto.dart';
import 'package:interview_challenge/domain/repositories/add_item_to_cart_repository.dart';
import 'package:interview_challenge/testing_entries/test_entries.dart';

main() {
  late final CartItemDto item;
  late final AddItemToCartRepository repository;

  setUpAll(() {
    Inject.init();
    repository = GetIt.I.get<AddItemToCartRepository>();
    item = CartItemDto(product: TestEntries.products[0], quantity: 5);
  });

  test('AddItemToCartRepository should exists', () {
    expect(repository, isNotNull);
  });

  test('It should be a true', () async {
    final result = await repository(item);
    expect(result, true);
  });
}
