import 'dart:convert';
import 'dart:ui';

import 'package:interview_challenge/domain/entities/product_entity.dart';

class ProductDto extends ProductEntity {
  ProductDto({
    required String id,
    required String title,
    required String description,
    required String imageUrl,
    required double price,
    required int availableQuantity,
    required List<String> categories,
    required String colorName,
  }) : super(
            id: id,
            name: title,
            description: description,
            imageUrl: imageUrl,
            price: price,
            availableQuantity: availableQuantity,
            colorName: colorName,
            categories: categories);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': name,
      'description': description,
      'imageUrl': imageUrl,
      'price': price,
      'availableQuantity': availableQuantity,
      'colorName': colorName,
      'categories': categories,
    };
  }

  factory ProductDto.fromMap(Map<String, dynamic> map) {
    return ProductDto(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      imageUrl: map['imageUrl'],
      price: map['price']?.toDouble(),
      availableQuantity: map['availableQuantity']?.toInt(),
      colorName: map['colorName'],
      categories: map['categories'].cast<String>(),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductDto.fromJson(String source) =>
      ProductDto.fromMap(json.decode(source));
}
