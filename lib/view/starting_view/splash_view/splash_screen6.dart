import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
class SplashScreen6 extends StatelessWidget {
  const SplashScreen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Stack(
  children: [
    Image(image: AssetImage('assets/images/welcome4.png')),
    Column(
      children: [
        Spacer(),
        Container(
          width:double.infinity,
          height: 350.0994873046875,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(150),topRight: Radius.circular(150))
          ),
          child: Column(
            children: [
              SizedBox(height: 50,),
              BlackTextWidget(text: "Buy Premium \n Quality Fruits"),
              SizedBox(height: 10,),
              GreyText(text: "Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy"),
              SizedBox(height: 40,),
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

