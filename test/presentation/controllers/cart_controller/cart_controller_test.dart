import 'package:flutter_test/flutter_test.dart';
import 'package:interview_challenge/core/injection/inject.dart';
import 'package:interview_challenge/presentation/controllers/cart_controller/cart_controller.dart';
import 'package:interview_challenge/testing_entries/test_entries.dart';

void main() {
  late CartController controller;
  final productOne = TestEntries.products[0];
  final productTwo = TestEntries.products[1];

  setUpAll(() {
    Inject.init();
  });

  setUp(() {
    controller = CartController();
  });

  test('ProductsController should exists', () {
    expect(controller, isNotNull);
  });
  test('Should not be null', () {
    expect(controller.items, isNotNull);
  });
  test('Should be false', () {
    expect(controller.isLoading, false);
  });

  group('Cart items quantity', () {
    test('Should have 0 cart items', () {
      expect(controller.cartItemsQuantity, 0);
    });

    test('Should have 1 cart items', () async {
      await controller.addProductToCart(productOne);
      expect(controller.cartItemsQuantity, 1);
    });

    test('Should have 1 cart items', () async {
      await controller.addProductToCart(productOne);
      await controller.addProductToCart(productOne);
      expect(controller.cartItemsQuantity, 1);
    });
    test('Should have 2 cart items', () async {
      await controller.addProductToCart(productOne);
      await controller.addProductToCart(productTwo);
      expect(controller.cartItemsQuantity, 2);
    });

    test('Should have 1 cart items', () async {
      await controller.addProductToCart(productOne);
      await controller.addProductToCart(productTwo);
      await controller.removeProductFromCart(productTwo);
      expect(controller.cartItemsQuantity, 1);
    });

    test('Should have 2 cart items', () async {
      await controller.addProductToCart(productOne);
      await controller.addProductToCart(productTwo);
      await controller.addProductToCart(productTwo);
      await controller.removeProductFromCart(productTwo);
      expect(controller.cartItemsQuantity, 2);
    });

    test('Should have 0 cart items', () async {
      await controller.addProductToCart(productOne);
      await controller.clearCart();
      expect(controller.cartItemsQuantity, 0);
    });

    test('Should have 0 cart items', () async {
      await controller.addProductToCart(productOne);
      await controller.retrieveCart();
      expect(controller.cartItemsQuantity, 0);
    });
  });

  group('Products quantity', () {
    test('Should have 0 products', () {
      expect(controller.productsQuantity, 0);
    });

    test('Should have 1 products', () async {
      await controller.addProductToCart(productOne);
      expect(controller.productsQuantity, 1);
    });

    test('Should have 2 products', () async {
      await controller.addProductToCart(productOne);
      await controller.addProductToCart(productOne);
      expect(controller.productsQuantity, 2);
    });
    test('Should have 2 products', () async {
      await controller.addProductToCart(productOne);
      await controller.addProductToCart(productTwo);
      expect(controller.productsQuantity, 2);
    });

    test('Should have 1 products', () async {
      await controller.addProductToCart(productOne);
      await controller.addProductToCart(productTwo);
      await controller.removeProductFromCart(productTwo);
      expect(controller.productsQuantity, 1);
    });

    test('Should have 2 products', () async {
      await controller.addProductToCart(productOne);
      await controller.addProductToCart(productTwo);
      await controller.addProductToCart(productTwo);
      await controller.removeProductFromCart(productTwo);
      expect(controller.productsQuantity, 2);
    });

    test('Should have 0 products', () async {
      await controller.addProductToCart(productOne);
      await controller.clearCart();
      expect(controller.productsQuantity, 0);
    });

    test('Should have 0 products', () async {
      await controller.addProductToCart(productOne);
      await controller.retrieveCart();
      expect(controller.productsQuantity, 0);
    });
  });

  group('Cart total amount', () {
    final priceOne = productOne.price;
    final priceTwo = productTwo.price;

    test('Total amount should be 0', () {
      expect(controller.totalAmount, 0);
    });

    test('Total amount should be $priceOne', () async {
      await controller.addProductToCart(productOne);
      expect(controller.totalAmount, priceOne);
    });

    test('Total amount should be ${2 * priceOne}', () async {
      await controller.addProductToCart(productOne);
      await controller.addProductToCart(productOne);
      expect(controller.totalAmount, 2 * priceOne);
    });
    test('Total amount should be ${priceOne + priceTwo}', () async {
      await controller.addProductToCart(productOne);
      await controller.addProductToCart(productTwo);
      expect(controller.totalAmount, priceOne + priceTwo);
    });

    test('Total amount should be $priceOne', () async {
      await controller.addProductToCart(productOne);
      await controller.addProductToCart(productTwo);
      await controller.removeProductFromCart(productTwo);
      expect(controller.totalAmount, priceOne);
    });

    test('Total amount should be ${priceOne + priceTwo}', () async {
      await controller.addProductToCart(productOne);
      await controller.addProductToCart(productTwo);
      await controller.addProductToCart(productTwo);
      await controller.removeProductFromCart(productTwo);
      expect(controller.totalAmount, priceOne + priceTwo);
    });

    test('Total amount should be 0', () async {
      await controller.addProductToCart(productOne);
      await controller.clearCart();
      expect(controller.totalAmount, 0);
    });

    test('Total amount should be 0', () async {
      await controller.addProductToCart(productOne);
      await controller.retrieveCart();
      expect(controller.totalAmount, 0);
    });
  });
}
