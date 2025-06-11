import 'package:flutter/material.dart';
import 'package:grocery_app/view/home_view/favorities-screen/favourite.dart';
import 'package:grocery_app/view/home_view/home-screen/home_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int select=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Expanded(flex: 90, child:
        //  select==1?HomeScreen() :select==2?Favourite(): select==3?
         // ),
          Expanded(flex: 10, child: Row(children: [
            IconButton(onPressed: (){
              select=1;
              setState(() {

              });
            }, icon: Icon(Icons.home)),
            IconButton(onPressed: (){
              select=2;
              setState(() {

              });
            }, icon: Icon(Icons.person)),
            IconButton(onPressed: (){
              select=3;
              setState(() {

              });
            }, icon: Icon(Icons.favorite_border)),
            IconButton(onPressed: (){
              select=4;
              setState(() {

              });
            }, icon: Icon(Icons.shopping_cart)),
          ],)),
        ],
      ),
    );
  }
}
