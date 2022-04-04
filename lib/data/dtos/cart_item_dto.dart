import 'dart:convert';

import 'package:interview_challenge/data/dtos/product_dto.dart';
import 'package:interview_challenge/domain/entities/cart_item_entity.dart';

class CartItemDto extends CartItemEntity {
  CartItemDto({
    required ProductDto product,
    required int quantity,
  }) : super(product: product, quantity: quantity);

  Map<String, dynamic> toMap() {
    return {
      'product': product.toMap(),
      'quantity': quantity,
    };
  }

  factory CartItemDto.fromMap(Map<String, dynamic> map) {
    return CartItemDto(
      product: ProductDto.fromMap(map['product']),
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItemDto.fromJson(String source) =>
      CartItemDto.fromMap(json.decode(source));
}
