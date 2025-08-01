import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import '../utils/constants/appcolors/app_color.dart';
class ContainerClass extends StatelessWidget {
  final String title;
  final String Subtitle;
  final String price;
  final String imagepath;
  final String cartadd;
  final String iconpath;
  const ContainerClass({super.key, required this.title,
    required this.Subtitle, required this.price,
    required this.cartadd, required this.imagepath,
    required this.iconpath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height:234 ,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        boxShadow:[
          BoxShadow(
          color: AppColors.greyColor,
          blurRadius: 5,
          offset: const Offset(1, 3),
        )] ,
      ),
      child: Column(
        children: [
          Row(
            children: [
            Image.asset(iconpath,),
            ],
          ),
          Image.asset(imagepath),
          BlackTextWidget(text: price),
          BlackTextWidget(text: title),
          BlackTextWidget(text: Subtitle),
          Divider( thickness: 1,color: AppColors.lightGrey,),
         Row(
           children: [
             Image.asset(imagepath),
             BlackTextWidget(text: cartadd),
           ],
         )
          ]
      ),
    );
  }
}
