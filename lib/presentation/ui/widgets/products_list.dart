import 'package:flutter/material.dart';
import 'package:interview_challenge/presentation/ui/pages/details_page/details_page.dart';

import '../../../data/dtos/product_dto.dart';
import 'product_card/product_card.dart';

class ProductsList extends StatelessWidget {
  final double listEndingSpace;
  final bool isLoadingProducts;
  final List<ProductDto> products;
  final Function(ProductDto) addProductToCart;
  final Function(ProductDto) removeProductFromCart;
  final List<int>? chosenQuantities;

  const ProductsList({
    required this.isLoadingProducts,
    required this.products,
    required this.addProductToCart,
    required this.removeProductFromCart,
    this.listEndingSpace = 0,
    this.chosenQuantities,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
            itemCount: products.length + 1,
            itemBuilder: (_, index) {
              //Add
              if (index == products.length) {
                return SizedBox(height: listEndingSpace);
              }

              final product = products[index];

              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ProductCard(
                  product: product,
                  chosenQuantity: chosenQuantities?[index] ?? 0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailsPage(product: product),
                      ),
                    );
                  },
                  onAddPressed: () => addProductToCart(product),
                  onRemovePressed: () => removeProductFromCart(product),
                ),
              );
            }));
  }
}
