import 'package:flutter/material.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';

import '../product_price.dart';

part 'components/card_buttons_and_chosen_quantity.dart';
part './components/card_data.dart';
part './components/product_image.dart';

class ProductCard extends StatelessWidget {
  final ProductDto product;
  final int? chosenQuantity;
  final Function() onPressed;
  final Function() onAddPressed;
  final Function() onRemovePressed;

  const ProductCard({
    Key? key,
    required this.product,
    required this.onPressed,
    required this.onAddPressed,
    required this.onRemovePressed,
    this.chosenQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(1),
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1, 1),
              blurRadius: 2,
            )
          ],
        ),
        child: Row(
          children: [
            Hero(
              tag: product.id,
              child: _CardImage(imageUrl: product.imageUrl),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _CardData(
                colorName: product.colorName,
                price: product.price,
                title: product.title,
              ),
            ),
            _CardButtonsAndChosenQuantity(
              chosenQuantity: chosenQuantity ?? 0,
              onAddPressed: onAddPressed,
              onRemovePressed: onRemovePressed,
              maxQuantity: product.availableQuantity,
            )
          ],
        ),
      ),
    );
  }
}
