import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:interview_challenge/core/injection/inject.dart';
import 'package:interview_challenge/presentation/controllers/cart_controller/cart_controller.dart';
import 'package:interview_challenge/presentation/ui/pages/products_page/products_page.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const ProductsPage(),
    );
  }
}
