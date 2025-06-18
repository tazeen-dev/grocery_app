import 'package:flutter/material.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
import 'package:grocery_app/view/home_view/cart-screen/cart.dart';
import 'package:grocery_app/view/home_view/favorities-screen/favourite.dart';
import 'package:grocery_app/view/home_view/home-screen/home_screen.dart';
import 'package:grocery_app/view/home_view/profile-screen/profile-screen.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int select=1;
  bool iconcolor=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          flex: 90,
          child: select==1? HomeScreen():select==2?ProfileScreen():select==3?FavouriteScreen():CartScreen(),
    ),
        Expanded(
          flex: 10,
            child:
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){
                  select=1;
                  setState(() {
                  });
                },
                  child: Image(image: AssetImage(AppIcons.homeicon,),color: AppColors.greyColor,)),
              InkWell(onTap: (){
                select=2;
                setState(() {
                });
              },
                  child:Image(image: AssetImage(AppIcons.homeicon))),
              InkWell(
                onTap: (){
                  select=3;
                  setState(() {
                  });
                },
                  child:Image(image: AssetImage(AppIcons.homeicon))),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){
                  select=4;
                  setState(() {
                  });
                },
                  child: Image(image: AssetImage(AppIcons.))),
            ],
          ),
        )
        ),
      ],
    ),
    );
  }
}
