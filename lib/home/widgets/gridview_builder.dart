import 'package:flutter/material.dart';

import '../model/product.dart';
import '../model/product_sales.dart';
import 'gridview_item.dart';

class ProductGridviewBuilder extends StatefulWidget {
  const ProductGridviewBuilder({super.key});

  @override
  State<ProductGridviewBuilder> createState() => _ProductGridviewBuilderState();
}

class _ProductGridviewBuilderState extends State<ProductGridviewBuilder> {
  @override
  Widget build(BuildContext context) {
         var items = Product.products;

    return Expanded(
      child: SizedBox(
                height: MediaQuery.of(context).size.height, 
        child: GridView.builder(
          
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) => CustomGridItem(product: items[index],),
        ),
      ),
    );
  }
}