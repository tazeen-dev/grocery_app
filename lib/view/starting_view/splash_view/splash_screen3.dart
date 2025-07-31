import 'package:flutter/material.dart';

import '../../../controller/components/green_text_button.dart';
import '../../../controller/components/grey-text.dart';
import '../../../controller/components/text-class.dart';
class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/splash2.png'),fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(height:90,width: 320,),
            BlackTextWidget(text: " Buy Quality \n Dairy Products",fontWeight: FontWeight.bold,),
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

