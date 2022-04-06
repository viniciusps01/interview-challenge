import 'package:flutter_test/flutter_test.dart';
import 'package:interview_challenge/data/dtos/cart_dto.dart';
import 'package:interview_challenge/data/dtos/cart_item_dto.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/domain/entities/cart_entity.dart';
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
  final json = CartDto(id: '1111', items: items).toJson();
  late final CartDto cart;

  setUpAll(() {
    cart = CartDto.fromJson(json);
  });

  test('CartDto should exist', () {
    expect(cart, isNotNull);
  });

  test('Should be a cartDto', () {
    expect(cart, isA<CartEntity>());
  });

  test('CartDto should have 2 items', () {
    expect(cart.itemsQuanity, 2);
  });

  test('Should have $quantityOne', () {
    expect(cart.items[0].quantity, quantityOne);
  });

  test('Should have ${quantityOne + quantityTwo} products', () {
    expect(cart.productsQuantity, quantityOne + quantityTwo);
  });
}
