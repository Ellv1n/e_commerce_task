import 'package:e_commerce_task/common/constants/app_images.dart';
import 'package:e_commerce_task/common/constants/app_text_styles.dart';
import 'package:e_commerce_task/common/extension/size_extension.dart';
import 'package:flutter/material.dart';

import '../../common/constants/app_texts.dart';
import '../../home/widgets/icon_button.dart';
import '../widgets/category_and_product_name.dart';
import '../widgets/category_box.dart';
import '../widgets/detail_nav_bar.dart';
import '../widgets/image_container.dart';
import '../widgets/product_info.dart';
import '../widgets/product_size_container.dart';
import '../widgets/sub_images.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        title: Center(child: Text('Detail')),
        actions: [
          CustomIconButton(
            icon: Icons.share,
          ),
          10.w,
          CustomIconButton(
            icon: Icons.message,
          ),
          10.w
        ],
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            ImageContainer(height: 270,width: double.infinity, imagePath: AppImages.imageOne,),
              10.h,
             const  OtherImages(),
              10.h,
            const CategoryAndProductInfo(),
              14.h,
              const ProductInfo(),
              10.h,
              const Text(
                AppTexts.appSizeText,
                style: AppTextStyles.detailPageHeadersTextStyle,
              ),
            const ProductSizeContainer(),
              10.h,
              const Text(
                'Product',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              5.h,
              const Text(AppTexts.appInfoText),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const DetailNavigationBar()
    );
  }
}
