import 'package:e_commerce_task/home/model/product.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_task/common/constants/app_images.dart';
import 'package:e_commerce_task/common/extension/size_extension.dart';

import '../../detail/pages/product_detail_page.dart';
import 'product_star_and_price.dart';

class CustomGridItem extends StatelessWidget {
  const CustomGridItem({Key? key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductDetailPage()),
            );},
        child: Container(
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 130,
                width: double.infinity,
                color: Colors.grey,
                child: Image.asset(
                  product.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              10.h,
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange,
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
                  child: Text(
                    product.categoryName,
                    style: const TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              ),
              5.h, 
               Flexible(
                child: Text(
                  product.productName,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
              10.h,
             ProductStarAndPrice(star: product.star,price: product.price,),
            ],
          ),
        ),
      ),
    );
  }
}
