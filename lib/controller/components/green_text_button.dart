import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants/appcolors/app_color.dart';
class GreenTextButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const GreenTextButton({super.key,required this .text
    ,required this.ontap  ,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        height: 50,
        width: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(colors: [AppColors.LightGreen,AppColors.DarkGreen])
        ),
        child: Center(
          child: Text(text,style: GoogleFonts.poppins(textStyle:
          TextStyle(fontSize: 15,fontWeight:FontWeight.w600,color: AppColors.whiteColor)),),
        ),
      ),
    );
  }
}
