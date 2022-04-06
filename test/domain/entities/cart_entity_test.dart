import 'package:flutter_test/flutter_test.dart';
import 'package:interview_challenge/core/injection/inject.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/domain/entities/cart_entity.dart';
import 'package:interview_challenge/testing_entries/test_entries.dart';

main() {
  final ProductDto productOne = TestEntries.products[0];
  final ProductDto productTwo = TestEntries.products[1];

  late CartEntity cart;

  setUp(() {
    cart = CartEntity();
  });

  test('Cart should exist', () {
    expect(cart, isNotNull);
  });

  group('Cart items quantity', () {
    test('Should have 0 cart items', () {
      expect(cart.itemsQuanity, 0);
    });

    test('Should have 1 cart items', () {
      cart.addProduct(productOne);
      expect(cart.itemsQuanity, 1);
    });

    test('Should have 1 cart items', () {
      cart.addProduct(productOne);
      cart.addProduct(productOne);
      expect(cart.itemsQuanity, 1);
    });
    test('Should have 2 cart items', () {
      cart.addProduct(productOne);
      cart.addProduct(productTwo);
      expect(cart.itemsQuanity, 2);
    });

    test('Should have 1 cart items', () {
      cart.addProduct(productOne);
      cart.addProduct(productTwo);
      cart.removeProduct(productTwo.id);
      expect(cart.itemsQuanity, 1);
    });

    test('Should have 2 cart items', () {
      cart.addProduct(productOne);
      cart.addProduct(productTwo);
      cart.addProduct(productTwo);
      cart.removeProduct(productTwo.id);
      expect(cart.itemsQuanity, 2);
    });

    test('Should have 0 cart items', () {
      cart.addProduct(productOne);
      cart.clearCart();
      expect(cart.itemsQuanity, 0);
    });
  });

  group('Products quantity', () {
    test('Should have 0 products', () {
      expect(cart.productsQuantity, 0);
    });

    test('Should have 1 products', () {
      cart.addProduct(productOne);
      expect(cart.productsQuantity, 1);
    });

    test('Should have 2 products', () {
      cart.addProduct(productOne);
      cart.addProduct(productOne);
      expect(cart.productsQuantity, 2);
    });
    test('Should have 2 products', () {
      cart.addProduct(productOne);
      cart.addProduct(productTwo);
      expect(cart.productsQuantity, 2);
    });

    test('Should have 1 products', () {
      cart.addProduct(productOne);
      cart.addProduct(productTwo);
      cart.removeProduct(productTwo.id);
      expect(cart.productsQuantity, 1);
    });

    test('Should have 0 products', () {
      cart.addProduct(productOne);
      cart.clearCart();
      expect(cart.productsQuantity, 0);
    });
  });
}
