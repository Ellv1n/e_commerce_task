import 'package:flutter/material.dart';

import '../../common/constants/app_text_styles.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text('4.8',style: AppTextStyles.productInfoStyle,),
                        Text('(100 review)'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('112 ',style: AppTextStyles.productInfoStyle,),
                        Text('(Purchased)'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('122 ',style: AppTextStyles.productInfoStyle,),
                        Text('(Stocks)'),
                      ],
                    )
                  ],
                );
  }
}