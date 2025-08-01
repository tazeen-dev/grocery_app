import 'package:flutter/material.dart';

import '../utils/constants/appcolors/app_color.dart';
class TextFeildWidget extends StatelessWidget {
  final String hintext;
  final Color color;
  final TextInputType textInputType;
  final IconData prefixIcons;
  final TextEditingController controller;
  const TextFeildWidget({super.key, required this.hintext, required this.prefixIcons, required this.controller,this.textInputType=TextInputType.number, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.zero,
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color:AppColors.whiteColor)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.whiteColor),
              borderRadius: BorderRadius.circular(5),
            ),
            filled: true,
            fillColor:color,
            hintText: hintext,
            hintStyle: TextStyle(
              color: AppColors.greyColor,
            ),
          prefixIcon: Icon(prefixIcons,color: AppColors.greyColor,),
        ),
      ),
    );
  }
}
