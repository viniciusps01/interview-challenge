import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_challenge/presentation/ui/pages/products_page/products_page.dart';
import 'package:interview_challenge/presentation/ui/widgets/product_price.dart';

import '../../../controllers/cart_controller/cart_controller.dart';
import '../../widgets/products_list.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cartController = GetIt.I.get<CartController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        actions: [
          IconButton(
            onPressed: () => confirmCartCleaning(context, _cartController),
            icon: const Icon(Icons.delete_outlined),
          )
        ],
      ),
      body: Observer(builder: (_) {
        return Column(
          children: [
            Expanded(
              child: ProductsList(
                addProductToCart: _cartController.addProductToCart,
                isLoadingProducts: false,
                products: _cartController.items.map((e) => e.product).toList(),
                chosenQuantities:
                    _cartController.items.map((e) => e.quantity).toList(),
                removeProductFromCart: _cartController.removeProductFromCart,
              ),
            ),
            Checkout(
              totalAmount: _cartController.totalAmount,
              onCheckout: () {},
            )
          ],
        );
      }),
    );
  }

  onClear(BuildContext context, CartController cartController) {
    cartController.clearCart();
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (_) => const ProductsPage(),
        ),
        (route) => false);
  }

  confirmCartCleaning(BuildContext context, CartController cartController) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: const Text('Are you sure you want to clear your cart?'),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: Navigator.of(context).pop,
                      child: const Text('Cancel'),
                    ),
                    ElevatedButton(
                      onPressed: () => onClear(context, cartController),
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      child: const Text(
                        'Clear',
                      ),
                    ),
                  ],
                )
              ],
            ));
  }
}

class Checkout extends StatelessWidget {
  final Function() onCheckout;
  final double totalAmount;

  const Checkout({
    Key? key,
    required this.onCheckout,
    required this.totalAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, -.05),
            blurRadius: 1,
          )
        ],
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'total',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade700,
                ),
              ),
              ProductPrice(price: totalAmount),
            ],
          ),
          ElevatedButton(
            onPressed: onCheckout,
            child: const Text('Check out'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              shape: const StadiumBorder(),
            ),
          )
        ],
      ),
    );
  }
}
