import 'package:interview_challenge/data/dtos/product_dto.dart';

final List<ProductDto> _testProducts = [
  ProductDto(
    id: '0000',
    title: 'MacBook',
    description: 'MackBook description',
    imageUrl: 'https://t2.tudocdn.net/551497?w=1000&fit=clip',
    price: 10000.0,
    availableQuantity: 215,
    colorName: 'Red',
    categories: ['Laptops'],
  ),
  ProductDto(
    id: '0001',
    title: 'Smartphone',
    description: 'MackBook description',
    imageUrl: 'https://pixabay.com/images/id-1282241/',
    price: 10000.0,
    availableQuantity: 215,
    colorName: 'Red',
    categories: ['Laptops'],
  ),
  ProductDto(
    id: '0010',
    title: 'MacBook',
    description: 'MackBook description',
    imageUrl: 'https://pixabay.com/images/id-1282241/',
    price: 10000.0,
    availableQuantity: 215,
    colorName: 'Red',
    categories: ['Laptops'],
  ),
  ProductDto(
    id: '0011',
    title: 'MacBook',
    description: 'MackBook description',
    imageUrl: 'https://pixabay.com/images/id-1282241/',
    price: 10000.0,
    availableQuantity: 215,
    colorName: 'Red',
    categories: ['Laptops'],
  ),
  ProductDto(
    id: '0100',
    title: 'MacBook',
    description: 'MackBook description',
    imageUrl: 'https://pixabay.com/images/id-1282241/',
    price: 10000.0,
    availableQuantity: 215,
    colorName: 'Red',
    categories: ['Laptops'],
  ),
];

List<ProductDto> get products => [..._testProducts];
