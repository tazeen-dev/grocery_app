import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryApp/view/starting_view/splash_view/splash_screen5.dart';

import '../../../controller/components/green_text_button.dart';
import '../../../controller/components/grey-text.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
class SplashScreen4 extends StatelessWidget {
  const SplashScreen4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/splash3.png'),fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(height:90,width: 320,),
            BlackTextWidget(text: "Welcome to"),
            Row(
             children: [
               SizedBox(width: 130),
               Text( 'BIG ',style: GoogleFonts.poppins(
                   textStyle:TextStyle(color: AppColors.LightGreen,fontWeight: FontWeight.normal,fontSize: 20)),
               ),
               Text( 'CART',style: GoogleFonts.poppins(
                 textStyle:TextStyle(color: AppColors.DarkGreen,fontWeight: FontWeight.bold,fontSize: 20)),
            ),
            ],
),
          SizedBox(height: 10,),
            GreyText(text: " Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy"),
            Spacer(),
            GreenTextButton(text: 'Get started', ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen5()));
            }),
            SizedBox(height: 40,),

          ],
        ),
      ),
    );
  }
}
