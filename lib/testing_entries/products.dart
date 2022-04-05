import 'package:flutter/material.dart';
import 'package:interview_challenge/data/dtos/product_dto.dart';

final List<ProductDto> _testProducts = [
  ProductDto(
    id: '0000',
    title: 'MacBook',
    description: 'MackBook description',
    imageUrl: 'imageUrlhttps://pixabay.com/images/id-1282241/',
    price: 10000.0,
    availableQuantity: 215,
    color: Colors.red,
    categories: ['Laptops'],
  ),
  ProductDto(
    id: '0001',
    title: 'Smartphone',
    description: 'MackBook description',
    imageUrl: 'imageUrlhttps://pixabay.com/images/id-1282241/',
    price: 10000.0,
    availableQuantity: 215,
    color: Colors.red,
    categories: ['Laptops'],
  ),
  ProductDto(
    id: '0010',
    title: 'MacBook',
    description: 'MackBook description',
    imageUrl: 'imageUrlhttps://pixabay.com/images/id-1282241/',
    price: 10000.0,
    availableQuantity: 215,
    color: Colors.red,
    categories: ['Laptops'],
  ),
  ProductDto(
    id: '0011',
    title: 'MacBook',
    description: 'MackBook description',
    imageUrl: 'imageUrlhttps://pixabay.com/images/id-1282241/',
    price: 10000.0,
    availableQuantity: 215,
    color: Colors.red,
    categories: ['Laptops'],
  ),
  ProductDto(
    id: '0100',
    title: 'MacBook',
    description: 'MackBook description',
    imageUrl: 'imageUrlhttps://pixabay.com/images/id-1282241/',
    price: 10000.0,
    availableQuantity: 215,
    color: Colors.red,
    categories: ['Laptops'],
  ),
];

List<ProductDto> get products => [..._testProducts];
