import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appimages/app_images_widget.dart';
class SplashScreen8 extends StatelessWidget {
  const SplashScreen8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(image: AssetImage(AppImages.milkimagesplash)),
          Column(
            children: [
              Spacer(),
              Container(
                  width:double.infinity,
                  height: 340.0994873046875,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(120),topRight: Radius.circular(120))
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                      BlackTextWidget(text: "Buy Premium \n Quality Fruits"),
                      SizedBox(height: 15),
                      GreyText(text: "Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy"),
                      SizedBox(height: 30,),
                      GreenTextButton(text: "Get started", ontap: (){}),
                      SizedBox(height: 30,),
                    ],
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}