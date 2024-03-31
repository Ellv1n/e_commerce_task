import 'package:e_commerce_task/common/extension/size_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'icon_button.dart';
import 'search_text_field.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          children: [
           SearchTextField(),
           5.h,
          CustomIconButton(icon: Icons.notifications_none),
            5.h,
          CustomIconButton(icon: Icons.shopping_bag_outlined),
          ],
        );
  }
}