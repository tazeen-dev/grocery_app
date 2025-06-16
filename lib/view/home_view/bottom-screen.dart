import 'package:flutter/material.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
import 'package:grocery_app/view/home_view/cart-screen/cart.dart';
import 'package:grocery_app/view/home_view/favorities-screen/favourite.dart';
import 'package:grocery_app/view/home_view/home-screen/home_screen.dart';
import 'package:grocery_app/view/home_view/profile-screen/profile-screen.dart';
class BottonBar extends StatefulWidget {
  const BottonBar({super.key});

  @override
  State<BottonBar> createState() => _BottonBarState();
}

class _BottonBarState extends State<BottonBar> {
  int select=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        select==1? HomeScreen():select==2?ProfileScreen():select==3?FavouriteScreen():CartScreen(),
        Expanded(
          flex: 20,
            child:
        Row(
          children: [
            InkWell(
              onTap: (){
                select=1;
                setState(() {
                });
              },
                child: Image(image: AssetImage(AppIcons.homeicon))),
            InkWell(onTap: (){
              select=2;
              setState(() {
              });
            },
                child: Image(image: AssetImage(AppIcons.person))),
            InkWell(
              onTap: (){
                select=3;
                setState(() {
                });
              },
                child: Image(image: AssetImage(AppIcons.hearticon),)),
            SizedBox(width: 10,),
            InkWell(
              onTap: (){
                select=4;
                setState(() {
                });
              },
                child: Image(image: AssetImage(AppIcons.carticon))),
          ],
        )
        ),
      ],
    ),
    );
  }
}
