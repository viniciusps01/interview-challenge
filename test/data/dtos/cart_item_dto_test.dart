import 'package:flutter_test/flutter_test.dart';
import 'package:interview_challenge/data/dtos/cart_item_dto.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/domain/entities/cart_item_entity.dart';

import 'package:interview_challenge/testing_entries/test_entries.dart';

main() {
  const quantity = 21;
  final ProductDto product = TestEntries.products[0];
  final json = CartItemDto(product: product, quantity: quantity).toJson();
  late final CartItemEntity cartItem;

  setUpAll(() {
    cartItem = CartItemDto.fromJson(json);
  });

  test('CartItem should exist', () {
    expect(cartItem, isNotNull);
  });
  test('Should be a CartItem', () {
    expect(cartItem, isA<CartItemEntity>());
  });

  test('Product id should be ${product.id}', () {
    expect(cartItem.product.id, product.id);
  });

  test('Quantity should be $quantity', () {
    expect(cartItem.quantity, quantity);
  });
}
