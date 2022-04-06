// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductsController on _ProductsControllerBase, Store {
  final _$productsAtom = Atom(name: '_ProductsControllerBase.products');

  @override
  List<ProductDto>? get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(List<ProductDto>? value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  final _$loadProductsAsyncAction =
      AsyncAction('_ProductsControllerBase.loadProducts');

  @override
  Future loadProducts() {
    return _$loadProductsAsyncAction.run(() => super.loadProducts());
  }

  @override
  String toString() {
    return '''
products: ${products}
    ''';
  }
}
