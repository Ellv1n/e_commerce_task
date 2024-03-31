import 'package:flutter/material.dart';

class ProductSale {
  final String saleText;
  final Color? color;
  final String imagePath;

  const ProductSale(
      {required this.saleText, required this.color, required this.imagePath});

   static const List<ProductSale> productSale = [
    ProductSale(
        saleText: 'Get your special sale up to 50%',
        color: Colors.red,
        imagePath: 'assets/images/one.png'),

    ProductSale(
        saleText: 'Get your special sale up to 50%',
        color: Colors.blue,
        imagePath: 'assets/images/one.png'),

    ProductSale(
        saleText: 'Get your special sale up to 50%',
        color: Colors.green,
        imagePath: 'assets/images/one.png'),
  ];
}
