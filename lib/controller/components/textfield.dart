import 'package:flutter/material.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
class TextFeildWidget extends StatelessWidget {
  final String hintext;
  final TextInputType textInputType;
  final IconData prefixIcons;
  final TextEditingController controller;
  const TextFeildWidget({super.key, required this.hintext, required this.prefixIcons, required this.controller,this.textInputType=TextInputType.number});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
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
            fillColor:AppColors.whiteColor,
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
