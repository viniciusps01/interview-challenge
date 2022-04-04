import 'package:flutter_test/flutter_test.dart';
import 'package:interview_challenge/data/dtos/cart_item_dto.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/domain/entities/cart_entity.dart';
import 'package:interview_challenge/domain/entities/cart_item_entity.dart';
import 'package:interview_challenge/testing_entries/test_entries.dart';

main() {
  const quantityOne = 21;
  final ProductDto productOne = TestEntries.products[0];
  const quantityTwo = 13;
  final ProductDto productTwo = TestEntries.products[1];
  final items = [
    CartItemDto(product: productOne, quantity: quantityOne),
    CartItemDto(product: productTwo, quantity: quantityTwo)
  ];
  late final CartEntity cart;

  setUpAll(() {
    cart = CartEntity(id: '1111', items: items);
  });

  test('Cart should exist', () {
    expect(cart, isNotNull);
  });

  test('Should be a cart', () {
    expect(cart, isA<CartEntity>());
  });

  test('Cart should have 2 items', () {
    expect(cart.items.length, 2);
  });
}
