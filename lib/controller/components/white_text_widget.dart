import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
class WhiteTextWidget extends StatelessWidget {
  final String text;
  const WhiteTextWidget({super.key, required this.text });

  @override
  Widget build(BuildContext context) {
    return Text(text , style: GoogleFonts.poppins(textStyle: TextStyle(color:AppColors.whiteColor,)),);
  }
}
