import 'dart:convert';

import 'package:interview_challenge/domain/entities/product_entity.dart';

class ProductDto extends ProductEntity {
  ProductDto({
    required String id,
    required String title,
    required String description,
    required String imageUrl,
    required double price,
    required int availableQuantity,
  }) : super(
          id: id,
          title: title,
          description: description,
          imageUrl: imageUrl,
          price: price,
          availableQuantity: availableQuantity,
        );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'price': price,
      'availableQuantity': availableQuantity,
    };
  }

  factory ProductDto.fromMap(Map<String, dynamic> map) {
    return ProductDto(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      availableQuantity: map['availableQuantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductDto.fromJson(String source) =>
      ProductDto.fromMap(json.decode(source));
}
