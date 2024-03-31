import 'package:e_commerce_task/common/extension/size_extension.dart';
import 'package:e_commerce_task/home/model/product.dart';
import 'package:flutter/material.dart';

class ProductStarAndPrice extends StatelessWidget {
  const ProductStarAndPrice({super.key, required this.star, required this.price});
  final String star;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            10.w,
            Text(star),
          ],
        ),
        Text(price),
      ],
    );
  }
}
