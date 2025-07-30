// import 'package:flutter/material.dart';
// import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
// import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
// import 'package:grocery_app/view/home_view/cart-screen/cart.dart';
// import 'package:grocery_app/view/home_view/favorities-screen/favourite.dart';
// import 'package:grocery_app/view/home_view/home-screen/home_screen1.dart';
// import 'package:grocery_app/view/home_view/profile-screen/profile-screen.dart';
// class BottomNav extends StatefulWidget {
//   const BottomNav({super.key});
//
//   @override
//   State<BottomNav> createState() => _BottomNavState();
// }
//
// class _BottomNavState extends State<BottomNav> {
//   int currentIndexs=0;
//   final List<Widget> navscreens=[
//     HomeScreen1(),
//   ProfileScreen(),
//     FavouriteScreen(),
//     CartScreen(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     body:navscreens[currentIndexs],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentIndexs,
//           onTap: (index){
//             setState(() {
//               currentIndexs=index;
//             });
//           },
//           selectedItemColor: AppColors.greencolor,
//           backgroundColor: AppColors.whiteColor,
//           items:[BottomNavigationBarItem(icon:Image(image: AssetImage(AppIcons.homeicon)),label: '' ),
//           BottomNavigationBarItem(icon:Image(image: AssetImage(AppIcons.person),color: AppColors.blackColor,),label: '' ),
//        BottomNavigationBarItem(icon:Image(image: AssetImage(AppIcons.hearticon,),color: AppColors.blackColor,),label: '' ),
//         BottomNavigationBarItem(icon:Image(image: AssetImage(AppIcons.cart2),color: AppColors.blackColor,) ,label: '',),
//       ]),
//     );
//   }
// }
//
import 'package:flutter/material.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
import 'package:grocery_app/view/home_view/cart-screen/cart.dart';
import 'package:grocery_app/view/home_view/favorities-screen/favourite.dart';
import 'package:grocery_app/view/home_view/home-screen/home_screen1.dart';
import 'package:grocery_app/view/home_view/profile-screen/profile-screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndexs = 0;

  final List<Widget> navscreens = [
    HomeScreen1(),
    ProfileScreen(),
    FavouriteScreen(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navscreens[currentIndexs],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndexs,
        onTap: (index) {
          setState(() {
            currentIndexs = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.greencolor,
        unselectedItemColor: Colors.black,
        backgroundColor: AppColors.whiteColor,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppIcons.homeicon),size: 30,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppIcons.person),size: 30,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppIcons.hearticon),size: 30,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppIcons.cart2),size: 30,),
            label: '',
          ),
        ],
      ),
    );
  }
}
