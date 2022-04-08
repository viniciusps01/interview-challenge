import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:interview_challenge/domain/entities/product_entity.dart';

main() {
  late ProductEntity productOne;
  const id = '1010';
  const title = 'MacBook';
  const description = 'MackBook description';
  const imageUrl = 'imageUrlhttps://pixabay.com/images/id-1282241/';
  const price = 10000.0;
  const availableQuantity = 215;
  const color = 'Black';
  const categories = ['Laptops'];

  setUp(() {
    productOne = ProductEntity(
      id: id,
      name: title,
      description: description,
      imageUrl: imageUrl,
      price: price,
      availableQuantity: availableQuantity,
      colorName: color,
      categories: categories,
    );
  });

  test('Product should exist', () {
    expect(productOne, isNotNull);
  });

  test('id should be $id', () {
    expect(productOne.id, id);
  });

  test('title should be $title', () {
    expect(productOne.name, title);
  });

  test('description should be $description', () {
    expect(productOne.description, description);
  });

  test('price should be $price', () {
    expect(productOne.price, price);
  });

  test('availableQuantity should be $availableQuantity', () {
    expect(productOne.availableQuantity, availableQuantity);
  });

  test('imageUrl should be $imageUrl', () {
    expect(productOne.imageUrl, imageUrl);
  });

  test('Color should be $color', () {
    expect(productOne.colorName, color);
  });

  test('Categories should have length ${categories.length}', () {
    expect(productOne.categories.length, categories.length);
  });
}
