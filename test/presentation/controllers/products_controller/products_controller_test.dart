import 'package:flutter_test/flutter_test.dart';
import 'package:interview_challenge/core/injection/inject.dart';
import 'package:interview_challenge/presentation/controllers/products_controller/products_controller.dart';
import 'package:interview_challenge/testing_entries/test_entries.dart';

void main() {
  late final ProductsController controller;

  setUpAll(() {
    Inject.init();
    controller = ProductsController();
  });

  test('ProductsController should exists', () {
    expect(controller, isNotNull);
  });
  test('Should be null', () {
    expect(controller.products, isNull);
  });
  test('Should be false', () {
    expect(controller.isLoading, false);
  });

  test('Should not be null', () async {
    await controller.loadProducts();
    expect(controller.products, isNotNull);
  });

  test('List should have length ${TestEntries.products}', () async {
    await controller.loadProducts();
    expect(controller.products!.length, TestEntries.products.length);
  });
}
