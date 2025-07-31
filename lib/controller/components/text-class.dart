import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants/appcolors/app_color.dart';
class BlackTextWidget extends StatelessWidget {
  final String text;
  final TextAlign textalignn;
  final Color textColor;
  final  double fontSize ;
  final FontWeight fontWeight;
  const BlackTextWidget({super.key, required this.text ,this.textalignn=
      TextAlign.center,this.textColor=AppColors.blackColor,this.fontWeight=FontWeight.bold,this.fontSize=30});

  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign :textalignn ,style:GoogleFonts.poppins(textStyle: TextStyle(color:textColor,
        fontSize:fontSize,fontWeight:fontWeight)));
  }
}

