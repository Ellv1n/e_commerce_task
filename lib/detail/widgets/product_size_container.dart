import 'package:e_commerce_task/common/extension/size_extension.dart';
import 'package:flutter/material.dart';

class ProductSizeContainer extends StatelessWidget {
  const ProductSizeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200),
          child: const Center(
              child: Text(
            'S',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          )),
        ),
        5.w,
        Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey.shade200),
          child: const Center(
              child: Text(
            'M',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          )),
        ),
        5.w,
        Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey.shade200),
          child: const Center(
              child: Text(
            'L',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          )),
        ),
        5.w,
        Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey.shade200),
          child: const Center(
              child: Text(
            'XL',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          )),
        ),
        5.w,
        Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.orange),
          child: const Center(
              child: Text(
            'XXL',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color: Colors.white),
          )),
        ),
      ],
    );
  }
}
