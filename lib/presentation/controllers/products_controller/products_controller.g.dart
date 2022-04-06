// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductsController on _ProductsControllerBase, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_ProductsControllerBase.isLoading'))
          .value;
  Computed<List<ProductDto>?>? _$productsComputed;

  @override
  List<ProductDto>? get products =>
      (_$productsComputed ??= Computed<List<ProductDto>?>(() => super.products,
              name: '_ProductsControllerBase.products'))
          .value;

  final _$_isLoadingAtom = Atom(name: '_ProductsControllerBase._isLoading');

  @override
  bool get _isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  final _$_productsAtom = Atom(name: '_ProductsControllerBase._products');

  @override
  List<ProductDto>? get _products {
    _$_productsAtom.reportRead();
    return super._products;
  }

  @override
  set _products(List<ProductDto>? value) {
    _$_productsAtom.reportWrite(value, super._products, () {
      super._products = value;
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
isLoading: ${isLoading},
products: ${products}
    ''';
  }
}
