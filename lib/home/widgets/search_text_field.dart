import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
              width: 280,
              height: 40,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade200),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30),),
                    ),
                    labelText: 'Search',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            );
  }
}