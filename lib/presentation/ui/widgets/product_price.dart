import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  final double price;
  final Widget? currencySymbol;

  const ProductPrice({
    Key? key,
    required this.price,
    this.currencySymbol,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        currencySymbol ?? const RealCurrencySymbol(),
        Text(
          price.toStringAsFixed(2),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class RealCurrencySymbol extends StatelessWidget {
  const RealCurrencySymbol({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 2),
      child: Text(
        'R\$',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 9,
        ),
      ),
    );
  }
}
