import 'dart:developer';

import 'package:e_commerce_task/common/extension/size_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainNavigationBottomBar extends StatefulWidget {
  const MainNavigationBottomBar({
    super.key,
    required this.onItemTapped,
  });
  final Function(int) onItemTapped;

  @override
  State<MainNavigationBottomBar> createState() =>
      _MainNavigationBottomBarState();
}

class _MainNavigationBottomBarState extends State<MainNavigationBottomBar> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  widget.onItemTapped(0);
                  setState(() {
                    selectedItem = 0;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.home_filled,
                      color: selectedItem == 0
                          ? Colors.orange
                          : Colors.white,
                    ),
                    Text("Home",
                        style: TextStyle(
                            color: selectedItem == 0
                                ? Colors.orange
                                : Colors.white)),
                  ],
                ),
              ),
              14.w,
              InkWell(
                onTap: () {
                  widget.onItemTapped(1);
                  setState(() {
                    selectedItem = 1;

                  });
                },
                child: Column(
                  children: [
                    Icon(Icons.ac_unit_rounded,
                        color: selectedItem == 1
                            ? Colors.orange
                            : Colors.white),
                    Text("Discover",
                        style: TextStyle(
                            color: selectedItem == 1
                                ? Colors.orange
                                : Colors.white)),
                  ],
                ),
              ),
              14.w,
              InkWell(
                onTap: () {
                  widget.onItemTapped(2);
                  setState(() {
                    selectedItem = 2;

                  });
                },
                child: Column(
                  children: [
                    Icon(Icons.heart_broken,
                        color: selectedItem == 2
                            ? Colors.orange
                            : Colors.white),
                    Text("Whislist",
                        style: TextStyle(
                            color: selectedItem == 2
                                ? Colors.orange
                                : Colors.white)),
                  ],
                ),
              ),
              14.w,
              InkWell(
                onTap: () {
                  widget.onItemTapped(3);
                  setState(() {
                    selectedItem = 3;

                  });
                },
                child: Column(
                  children: [
                    Icon(Icons.message,
                        color: selectedItem == 3
                            ? Colors.orange
                            : Colors.white),
                    Text("Message",
                        style: TextStyle(
                            color: selectedItem == 3
                                ? Colors.orange
                                : Colors.white)),
                  ],
                ),
              ),
              14.w,
              InkWell(
                onTap: () {
                  widget.onItemTapped(4);
                  setState(() {
                    selectedItem = 4;

                  });
                },
                child: Column(
                  children: [
                    Icon(Icons.person,
                        color: selectedItem == 4
                            ? Colors.orange
                            : Colors.white),
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: selectedItem == 4
                              ? Colors.orange
                              : Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
