import 'package:e_commerce_task/home/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

import '../model/product_sales.dart';

class PageViewBuilder extends StatefulWidget {
  const PageViewBuilder({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<PageViewBuilder> createState() => _PageViewBuilderState();
}

class _PageViewBuilderState extends State<PageViewBuilder> {
  @override
  Widget build(BuildContext context) {
    const items = ProductSale.productSale;
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: PageView.builder(
          controller: widget.pageController,
          itemCount: items.length,
          itemBuilder: (_, i) => PageViewItem(productSale: items[i],)),
    );
  }
}
