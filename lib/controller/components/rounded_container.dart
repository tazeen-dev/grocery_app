import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
class RoundedContainer extends StatelessWidget {
  const RoundedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 424.2607727050781,
      width: 414.0994873046875,
      decoration: BoxDecoration(
        color:AppColors.whiteColor,
        borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50)),
      ),
    );
  }
}

