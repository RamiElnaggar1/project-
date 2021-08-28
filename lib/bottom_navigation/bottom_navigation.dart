import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project/cart/cart.dart';
import 'package:project/categories/home_categories/ui_categories.dart';
import 'package:project/home/home_ui.dart';


class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _currentIndex=0;
  @override
  List<Widget>list=[
    Product(),
    Categories(),
    Cart(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(

body: list[_currentIndex],
       backgroundColor: Color(0xffB3B3B4 ),
        bottomNavigationBar: CurvedNavigationBar(
      color: Color(0xffB3B3B4   ),
      backgroundColor: Color(0xffA3A9A4),
     height: 50,
          onTap: (value){

            setState(() {
              _currentIndex=value;
            });
          },
      items: <Widget>[
        Icon(
          Icons.home,
          size: 20,
          color: Color(0xff606060),
        ),
        Icon(
          Icons.category,
          size: 20,
          color: Color(0xff606060),
        ),
        Icon(
          Icons.shopping_cart,
          size: 20,
          color: Color(0xff606060),
        ),

      ],
    ),

    );
  }
}
