import 'package:flutter/material.dart';

import '../../common/constants/app_text_styles.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({super.key, required this.categoryName, required this.horizontal, required this.vertical});
  final String categoryName;
  final double horizontal;
  final double vertical;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.orange,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal:horizontal, vertical: vertical),
        child: Text(
          categoryName,
          style: AppTextStyles.textStyleCategory,
        ),
      ),
    );
  }
}
