import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/black_text_widget.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/grey_text_widget.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
class SplashScreen6 extends StatelessWidget {
  const SplashScreen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Stack(
  children: [
    Image(image: AssetImage('assets/images/onboarding2.png')),
    Column(
      children: [
        Spacer(),
        Container(
          width:double.infinity,
          height: 314.0994873046875,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(90),topRight: Radius.circular(90))
          ),
          child: Column(
            children: [
              Spacer(),
              BlackTextWidget(text: "Buy Premium \n Quality Fruits"),
              GreyText(text: "Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy"),
              Spacer(),
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

