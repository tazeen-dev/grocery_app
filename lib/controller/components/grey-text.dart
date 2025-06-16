import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
class GreyText extends StatelessWidget {
  final String text;
  final TextAlign textalign;
  const GreyText({super.key, required this.text,this.textalign=TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign:textalign,style: GoogleFonts.poppins(textStyle: TextStyle(color:
    AppColors.greyColor,fontWeight: FontWeight.w500,fontSize: 15)),);
  }
}
