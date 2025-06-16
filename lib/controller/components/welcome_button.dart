import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
class WelcomeButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final Gradient gradients;
  final String imageicon;
  final Color textColor;
  final Color background;
  final TextAlign textalign;
  const WelcomeButton({super.key ,required this.text, this.textColor=AppColors.blackColor,this.gradients=const LinearGradient(colors:
  [AppColors.whiteColor,
    AppColors.whiteColor],),
    this.textalign=TextAlign.start, required this.ontap, required this.imageicon, this.background=AppColors.DarkGreen, });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height:50 ,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: background,
          gradient:gradients,
        ),
          child: Row(
            children:[
              SizedBox(width: 15,),
             Image(image: AssetImage(imageicon,)),
              SizedBox(width: 30),
              Text(text,style: GoogleFonts.poppins(textStyle: TextStyle(color: textColor,fontSize: 15,fontWeight: FontWeight.w500),),),
            ],
          ),
      ),
    );
  }
}

