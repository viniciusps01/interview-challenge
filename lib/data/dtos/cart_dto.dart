import 'dart:convert';

import 'package:interview_challenge/data/dtos/cart_item_dto.dart';
import 'package:interview_challenge/domain/entities/cart_entity.dart';

class CartDto extends CartEntity {
  CartDto({
    String? id,
    List<CartItemDto>? items,
  }) : super(id: id, items: items);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'items': items.map((x) => x.toMap()).toList(),
    };
  }

  factory CartDto.fromMap(Map<String, dynamic> map) {
    return CartDto(
      id: map['id'],
      items: List<CartItemDto>.from(
          map['items']?.map((x) => CartItemDto.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory CartDto.fromJson(String source) =>
      CartDto.fromMap(json.decode(source));
}
