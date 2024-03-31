import 'package:flutter/material.dart';

class BottomNavigationBarItem extends StatefulWidget {
  const BottomNavigationBarItem(
      {super.key,
      required this.onItemTapped,
      required this.index,
      required this.icon, required this.text});
  final Function(int) onItemTapped;
  final int index;
  final IconData icon;
  final String text;

  @override
  State<BottomNavigationBarItem> createState() =>
      _BottomNavigationBarItemState();
}

class _BottomNavigationBarItemState extends State<BottomNavigationBarItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onItemTapped(widget.index);
        setState(() {});
      },
      child: Column(
        children: [
          Icon(widget.icon,
              color: widget.index == 4 ? Colors.orange : Colors.white),
          Text(
            widget.text,
            style: TextStyle(
                color: widget.index == 4 ? Colors.orange : Colors.white),
          ),
        ],
      ),
    );
  }
}
