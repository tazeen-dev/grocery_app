import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
class WelcomeButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final Gradient gradient;
  final String image;
  final Color textColor;
  final TextAlign textalign;
  const WelcomeButton({super.key ,required this.text, this.textColor=AppColors.blackColor,this.gradient=const LinearGradient(colors: [AppColors.LightGreen,
    AppColors.DarkGreen],),
    this.textalign=TextAlign.start, required this.ontap, required this.image, });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height:50 ,
        width: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           // Image(image: AssetImage(image)),
            Text(text,style: GoogleFonts.poppins(textStyle: TextStyle(color: textColor,fontSize: 15,fontWeight: FontWeight.w500),),),
          ],
        ),
      ),
    );
  }
}

