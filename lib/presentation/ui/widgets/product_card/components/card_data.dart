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
            fontSize: 16,
            fontWeight: FontWeight.w500,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          colorName,
          style: const TextStyle(
            fontSize: 13,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        ProductPrice(price: price),
      ],
    );
  }
}
