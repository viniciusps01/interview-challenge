import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_challenge/core/injection/inject.dart';
import 'package:interview_challenge/presentation/controllers/cart_controller/cart_controller.dart';
import 'package:interview_challenge/presentation/ui/widgets/product_card/product_card.dart';
import 'package:interview_challenge/testing_entries/test_entries.dart';

void main() {
  Inject.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final cartController = GetIt.I.get<CartController>();

    return MaterialApp(
      title: 'Shopping',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Products')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ProductCard(
              product: TestEntries.products[0],
              chosenQuantity: 5,
              onPressed: () {},
              onAddPressed: () =>
                  cartController.addProductToCart(TestEntries.products[0]),
              onRemovePressed: () => cartController
                  .removeProductFromCart(TestEntries.products[0])),
        ),
      ),
    );
  }
}
