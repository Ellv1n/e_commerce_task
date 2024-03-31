import 'package:flutter/material.dart';

import '../../home/widgets/icon_button.dart';
import 'category_box.dart';

class CategoryAndProductInfo extends StatelessWidget {
  const CategoryAndProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       CategoryBox(horizontal: 8,vertical: 4,categoryName:'Hoodie',),
                       Text('Erigo Hoodie Kagoshima Dark Oak Unisex')
                      ],
                    ),
                    CustomIconButton(
                      icon: Icons.heart_broken,
                    )
                  ],
                );
  }
}