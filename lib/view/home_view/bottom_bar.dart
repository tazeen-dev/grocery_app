import 'package:flutter/material.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
import 'package:grocery_app/view/home_view/cart-screen/cart.dart';
import 'package:grocery_app/view/home_view/favorities-screen/favourite.dart';
import 'package:grocery_app/view/home_view/home-screen/home_screen.dart';
import 'package:grocery_app/view/home_view/profile-screen/profile-screen.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentpage=1;
  /*Onchange(index){
    currentpage=index;
    setState(() {
    });
  }*/
  List pages=[
    HomeScreen(),
    ProfileScreen(),
    FavouriteScreen(),
    CartScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationBar(
        currentIndex: currentpage,
          onTap: (index){
          currentpage=index;
          setState(() {
          });
          },
          selectedItemColor: AppColors.blackColor,
          unselectedItemColor: AppColors.greyColor,
          items: [
            BottomNavigationBarItem(icon: Image(image: AssetImage(AppIcons.homeicon,))),
            BottomNavigationBarItem(icon: Image(image: AssetImage(AppIcons.person))),
            BottomNavigationBarItem(icon: Image(image: AssetImage(AppIcons.hearticon))),
            BottomNavigationBarItem(icon: Image(image: AssetImage(AppIcons.carticon))),

      ]),
    );
  }
}
