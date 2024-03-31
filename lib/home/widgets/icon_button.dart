import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
   CustomIconButton({super.key, this.icon});
  final IconData? icon;


  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        shape: BoxShape.circle,
      ),
      child:  Padding(
        padding: EdgeInsets.all(5.0),
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
