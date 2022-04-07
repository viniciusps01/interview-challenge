import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_challenge/presentation/controllers/cart_controller/cart_controller.dart';
import 'package:interview_challenge/presentation/controllers/products_controller/products_controller.dart';

import '../../widgets/products_list.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cartController = GetIt.I.get<CartController>();
    final _productsController = GetIt.I.get<ProductsController>();

    _productsController.loadProducts();
    _cartController.retrieveCart();

    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Observer(
          builder: (_) => Badge(
            showBadge: _cartController.cartItemsQuantity != 0,
            badgeContent: Text('${_cartController.productsQuantity}'),
            child: const Icon(Icons.shopping_cart_outlined),
          ),
        ),
      ),
      body: Observer(builder: (_) {
        return ProductsList(
          addProductToCart: _cartController.addProductToCart,
          isLoadingProducts: _productsController.isLoading,
          products: _productsController.products!,
          removeProductFromCart: _cartController.removeProductFromCart,
        );
      }),
    );
  }
}
