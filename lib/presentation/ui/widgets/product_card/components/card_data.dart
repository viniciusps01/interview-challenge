part of '../product_card.dart';

class _CardData extends StatelessWidget {
  final String colorName;
  final String title;
  final double price;

  const _CardData({
    Key? key,
    required this.colorName,
    required this.price,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          colorName,
          style: const TextStyle(
            fontSize: 12,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        ProductPrice(price: price),
      ],
    );
  }
}

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
          price.toString(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
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
