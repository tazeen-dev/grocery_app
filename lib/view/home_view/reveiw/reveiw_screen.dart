import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appimages/app_images_widget.dart';
class ReveiwScreen extends StatefulWidget {
  const ReveiwScreen({super.key});

  @override
  State<ReveiwScreen> createState() => _ReveiwScreenState();
}

class _ReveiwScreenState extends State<ReveiwScreen> {
  List<String> text=[
    'Carla Septimus',
    'Carla George',
    'Maren Kenter',
  ];
  List <String> images=[
    AppImages.lemon,
    AppImages.homeimage,
    AppImages.lemon,
    AppImages.homeimage,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       width: 380,
        height:169 ,
        color: AppColors.whiteColor,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
            itemCount: text.length,
            itemBuilder:
        (context,index) {
          return Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage:AssetImage(images[index]) ,
                  ),
                  BlackTextWidget(text:text[index],fontSize:15 ,fontWeight: FontWeight.w600,)
                ],
              ),
              GreyText(text:'32 minutes ago', ),
              Divider( color: AppColors.greyColor,thickness:1,height: 343.0000000000013,),
              Row(
                children: [
                  BlackTextWidget(text: '4.5',fontWeight: FontWeight.w500,fontSize: 12,),
                  Icon(Icons.star,color: AppColors.yellowcolor,),
                  Icon(Icons.star,color: AppColors.yellowcolor,),
                  Icon(Icons.star,color: AppColors.yellowcolor,),
                  Icon(Icons.star,color: AppColors.yellowcolor,),
                  Icon(Icons.star_half_sharp,color: AppColors.yellowcolor,)
                ],
              ),
              GreyText(text: 'Lorem ipsum dolor sit amet, consetetur sadi sspscing \n elitr, sed diam nonumy',)
            ],
          );
        }),
      ),
    );
  }
}
