import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/grey-text.dart';

import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
class WriteReview extends StatelessWidget {
  const WriteReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(text: ' Write Reviews',fontWeight: FontWeight.w500,fontSize: 18,),
        centerTitle: true,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image(image: AssetImage(AppIcons.backicon),color: AppColors.blackColor,)),
      ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          BlackTextWidget(text: 'What do you think ?',fontSize:20 ,),
          GreyText(text: 'please give your rating by clicking on'),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star,color:Color(0xffFFC107),size: 35,),
              Icon(Icons.star,color:Color(0xffFFC107),size: 35,),
              Icon(Icons.star,color:Color(0xffFFC107) ,size: 35,),
              Icon(Icons.star,color: Color(0xffFFC107),size: 35,),
              Icon(Icons.star_half_sharp,color:Color(0xffFFC107),size: 35,)
            ],
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Container(
              height:164 ,
              width:380 ,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child:Padding(
                padding: const EdgeInsets.only(bottom: 115.0),
                child: Row(
                  children: [
                    SizedBox(width: 18,),
                    Icon(Icons.edit,color: AppColors.greyColor,size: 15,),
                    SizedBox(width: 15,),
                    BlackTextWidget(text: 'Tell us about your experience',textColor: AppColors.greyColor,fontWeight: FontWeight.w400,fontSize: 10,)
                  ],
                ),
              )
            ),
          ),
          SizedBox(height: 30,),
          GreenTextButton(text: 'Start shopping', ontap: (){}),
        ],
      )
    );
  }
}
