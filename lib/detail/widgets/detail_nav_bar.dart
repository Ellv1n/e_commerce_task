import 'package:flutter/material.dart';

class DetailNavigationBar extends StatelessWidget {
  const DetailNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: double.infinity,
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
              
               Text("Price"),
               Text("\$17.00"),
            ],),

         Row(children: [
             Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                  color: Colors.orange),
              child: const Center(
                  child:Icon(Icons.shopping_basket_outlined)),
            ),
                Container(
              height: 50,
              width: 100,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                  color: Colors.black),
              child: const Center(
                  child:Text('Buy Now',style: TextStyle(color: Colors.white),)),
            ),
         ],)
          
          ],),
        ),
      );
  }
}