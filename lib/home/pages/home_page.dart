import 'dart:developer';

import 'package:e_commerce_task/common/extension/size_extension.dart';
import 'package:e_commerce_task/home/widgets/page_view_builder.dart';
import 'package:flutter/material.dart';
import '../widgets/category_list.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/dot_indocator.dart';
import '../widgets/gridview_builder.dart';
import '../widgets/main_navigation_bottom_bar.dart';
import 'discover_page.dart';
import 'message_page.dart';
import 'profile_page.dart';
import 'whislist_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pageController = PageController();
  int _selectedItemIndex = 0;

  void _onItemTapped(int index) {
    _selectedItemIndex = index;
    log('$_selectedItemIndex');
  }

  final List<Widget> _pages = [
    const DiscoverPage(),
    const WhislistPage(),
    const MessagePage(),
    const ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      viewportFraction: 0.83,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBar(),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              PageViewBuilder(pageController: pageController),
              24.h,
              DotIndicator(
                pageController: pageController,
              ),
              18.h,
              const CategoryList(),
              18.h,
              const ProductGridviewBuilder(),
            ],
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 10,
            child: MainNavigationBottomBar(
              onItemTapped: _onItemTapped,
            ),
          ),
        ],
      ),
    );
  }
}
