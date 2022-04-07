// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartController on _CartControllerBase, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_CartControllerBase.isLoading'))
          .value;
  Computed<List<CartItemDto>>? _$itemsComputed;

  @override
  List<CartItemDto> get items =>
      (_$itemsComputed ??= Computed<List<CartItemDto>>(() => super.items,
              name: '_CartControllerBase.items'))
          .value;
  Computed<int>? _$productsQuantityComputed;

  @override
  int get productsQuantity => (_$productsQuantityComputed ??= Computed<int>(
          () => super.productsQuantity,
          name: '_CartControllerBase.productsQuantity'))
      .value;
  Computed<double>? _$totalAmountComputed;

  @override
  double get totalAmount =>
      (_$totalAmountComputed ??= Computed<double>(() => super.totalAmount,
              name: '_CartControllerBase.totalAmount'))
          .value;
  Computed<int>? _$cartItemsQuantityComputed;

  @override
  int get cartItemsQuantity => (_$cartItemsQuantityComputed ??= Computed<int>(
          () => super.cartItemsQuantity,
          name: '_CartControllerBase.cartItemsQuantity'))
      .value;

  final _$_productsQuantityAtom =
      Atom(name: '_CartControllerBase._productsQuantity');

  @override
  int get _productsQuantity {
    _$_productsQuantityAtom.reportRead();
    return super._productsQuantity;
  }

  @override
  set _productsQuantity(int value) {
    _$_productsQuantityAtom.reportWrite(value, super._productsQuantity, () {
      super._productsQuantity = value;
    });
  }

  final _$_totalAmountAtom = Atom(name: '_CartControllerBase._totalAmount');

  @override
  double get _totalAmount {
    _$_totalAmountAtom.reportRead();
    return super._totalAmount;
  }

  @override
  set _totalAmount(double value) {
    _$_totalAmountAtom.reportWrite(value, super._totalAmount, () {
      super._totalAmount = value;
    });
  }

  final _$_cartItemsQuantityAtom =
      Atom(name: '_CartControllerBase._cartItemsQuantity');

  @override
  int get _cartItemsQuantity {
    _$_cartItemsQuantityAtom.reportRead();
    return super._cartItemsQuantity;
  }

  @override
  set _cartItemsQuantity(int value) {
    _$_cartItemsQuantityAtom.reportWrite(value, super._cartItemsQuantity, () {
      super._cartItemsQuantity = value;
    });
  }

  final _$_isLoadingAtom = Atom(name: '_CartControllerBase._isLoading');

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

  final _$_cartAtom = Atom(name: '_CartControllerBase._cart');

  @override
  CartEntity get _cart {
    _$_cartAtom.reportRead();
    return super._cart;
  }

  @override
  set _cart(CartEntity value) {
    _$_cartAtom.reportWrite(value, super._cart, () {
      super._cart = value;
    });
  }

  final _$retrieveCartAsyncAction =
      AsyncAction('_CartControllerBase.retrieveCart');

  @override
  Future retrieveCart() {
    return _$retrieveCartAsyncAction.run(() => super.retrieveCart());
  }

  final _$_CartControllerBaseActionController =
      ActionController(name: '_CartControllerBase');

  @override
  dynamic addProductToCart(ProductDto product) {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase.addProductToCart');
    try {
      return super.addProductToCart(product);
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeProductFromCart(ProductDto product) {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase.removeProductFromCart');
    try {
      return super.removeProductFromCart(product);
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clearCart() {
    final _$actionInfo = _$_CartControllerBaseActionController.startAction(
        name: '_CartControllerBase.clearCart');
    try {
      return super.clearCart();
    } finally {
      _$_CartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
items: ${items},
productsQuantity: ${productsQuantity},
totalAmount: ${totalAmount},
cartItemsQuantity: ${cartItemsQuantity}
    ''';
  }
}
