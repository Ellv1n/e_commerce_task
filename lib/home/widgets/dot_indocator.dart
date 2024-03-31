import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../common/constants/app_colors.dart';
import '../model/product_sales.dart';


class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    const items = ProductSale.productSale;
    return SmoothPageIndicator(
      controller: pageController,
      count: items.length,
      effect: const ExpandingDotsEffect(
        activeDotColor: AppColors.black,
        dotHeight: 8,
        dotWidth: 8,
        spacing: 4,
      ),
      onDotClicked: (i) => pageController.jumpToPage(i),
    );
  }
}
