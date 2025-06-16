import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
class SplashScreen01 extends StatelessWidget {
  const SplashScreen01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/splash2.png'),fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(height: 90,width: 320,),
            BlackTextWidget(text: 'Buy Quality \n Dairy Products'),
            SizedBox(height: 10,),
            GreyText(text: "Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy"),
            Spacer(),
            GreenTextButton(text: 'Get started', ontap: (){}),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
