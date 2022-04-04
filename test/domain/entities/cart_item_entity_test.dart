import 'package:flutter_test/flutter_test.dart';
import 'package:interview_challenge/domain/entities/cart_item_entity.dart';
import 'package:interview_challenge/domain/entities/product_entity.dart';
import 'package:interview_challenge/testing_entries/test_entries.dart';

main() {
  const quantity = 21;
  final ProductEntity product = TestEntries.products[0];
  late final CartItem cartItem;

  setUpAll(() {
    cartItem = CartItem(product: product, quantity: quantity);
  });

  test('Product should exist', () {
    expect(cartItem, isNotNull);
  });

  test('Product id should be ${product.id}', () {
    expect(cartItem.product.id, product.id);
  });

  test('Quantity should be $quantity', () {
    expect(cartItem.quantity, quantity);
  });
}
