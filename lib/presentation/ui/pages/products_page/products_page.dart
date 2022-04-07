import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_challenge/presentation/controllers/cart_controller/cart_controller.dart';
import 'package:interview_challenge/presentation/controllers/products_controller/products_controller.dart';
import 'package:interview_challenge/presentation/ui/widgets/product_card/product_card.dart';

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
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(8),
        child: Observer(
            name: 'Products',
            builder: (_) {
              if (_productsController.isLoading) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              }
              return ListView.builder(
                  itemCount: _productsController.products!.length,
                  itemBuilder: (_, index) {
                    final product = _productsController.products![index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ProductCard(
                          product: product,
                          onPressed: () {},
                          onAddPressed: () =>
                              _cartController.addProductToCart(product),
                          onRemovePressed: () =>
                              _cartController.removeProductFromCart(product)),
                    );
                  });
            }),
      ),
    );
  }
}
