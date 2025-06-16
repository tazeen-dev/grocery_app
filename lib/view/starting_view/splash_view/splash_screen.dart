import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/splash.png',),fit: BoxFit.cover),
          ),
          child: Column(
            children: [SizedBox(height:80,width: 247,),
              BlackTextWidget(text: "Get Discounts \n On All Products",),
              GreyText(text: "Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy"),
              Spacer(),
              GreenTextButton(text: "Get started", ontap: (){}),
              SizedBox(height: 40,)
            ],
          ),
        ),
    );
  }
}

