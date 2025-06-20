import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/components/profile_listveiw.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
import 'package:grocery_app/controller/utils/constants/appimages/app_images_widget.dart';
import 'package:grocery_app/model/product_model/profile_list_model.dart';
import 'package:grocery_app/view/home_view/profile-screen/aboutscreen.dart';
class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});
  List<ProfileList> items=[
    ProfileList(AboutScreen(), text: 'About me', image: AppImages.profile, icon:Icons.arrow_forward_ios,),
    ProfileList(, text: text, image: image, icon: icon)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 20,
                  child: Container(
                height: 145,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                ),
              )),
              Expanded(
                  flex: 80,
                  child: Container(
              width: double.infinity,
                    color: Colors.grey.withOpacity(0.5),
                  decoration: BoxDecoration(
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage(AppImages.profile),)
                        ),
                      ),
                      GreyText(text: 'oliviaaustin@gmail.com'),
                      ListClass(profileitems: ),
                    ],
                  ),),
              )
            ],
          )
        ],
      ),
    );
  }
}

