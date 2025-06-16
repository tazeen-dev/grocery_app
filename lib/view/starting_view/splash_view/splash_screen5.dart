import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
class SplashScreen5 extends StatelessWidget {
  const SplashScreen5({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/onboarding1.png",fit: BoxFit.cover,),
         Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 450.0),
            child: Container(
            height:424.6357727050781 ,
            width:414.0995178222656 ,
              color: AppColors.whiteColor,
              child: Column(
                children: [
                  BlackTextWidget(text: "Premium Food\nAt Your Doorstep",)
                 ,
                  GreyText(text: "Lorem ipsum dolor sit amet, consetetu \n sadipscing elitr, sed diam nonumy"),
                  Spacer(),
                  GreenTextButton(text: "Start", ontap: (){} ),
                  SizedBox(height: 30,)
                ],
              ),

                    ),
          ),
        ],
      ),
    );
  }
}

