import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/black_text_widget.dart';

import '../utils/constants/appcolors/app_color.dart';
class ContainerWidget extends StatelessWidget {
  final String text;
  final String carttext;
  final double fontSize;
  final FontWeight fontWeight;
  final String imagepath;
  final String imageicon;
  final String bigimage;
  final String image;
  final String smalltext;
  final Color color;
  const ContainerWidget({super.key, required this.text, this.fontSize=20,
    this.fontWeight=FontWeight.w600,required this.imagepath,this.color=AppColors.greyColor ,
    required this.imageicon,required this.carttext, required this.bigimage, required this.image, required this.smalltext});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:181 ,
      height:234 ,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagepath),fit: BoxFit.cover),
        color: AppColors.whiteColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
           Image(image: AssetImage(imagepath)),
            ],
          ),
          SizedBox(height: 20,),
          Divider(thickness: 1,color: AppColors.greyColor,),
          Row(
            children: [
              BlackTextWidget(text: smalltext)
            ],
          )
            ],
      ),

    );
  }
}

