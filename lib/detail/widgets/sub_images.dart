import 'package:e_commerce_task/common/extension/size_extension.dart';
import 'package:flutter/material.dart';

import '../../common/constants/app_images.dart';
import 'image_container.dart';

class OtherImages extends StatelessWidget {
  const OtherImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageContainer(
          height: 70,
          width: 90,
          imagePath: AppImages.imageOne,
        ),
        5.w,
        ImageContainer(
          height: 70,
          width: 90,
          imagePath: AppImages.imageOne,
        ),
        5.w,
        ImageContainer(
          height: 70,
          width: 90,
          imagePath: AppImages.imageOne,
        ),
        5.w,
        ImageContainer(
          height: 70,
          width: 90,
          imagePath: AppImages.imageOne,
        ),
      ],
    );
  }
}
