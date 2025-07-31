import 'package:flutter/material.dart';

import '../../../controller/components/green_text_button.dart';
import '../../../controller/components/grey-text.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appimages/app_images_widget.dart';
class SplashScreen7 extends StatelessWidget {
  const SplashScreen7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(image: AssetImage(AppImages.randomplash,),fit: BoxFit.cover,),
          Column(
            children: [
              Spacer(),
              Container(
                  width:double.infinity,
                  height:390.5122375488281,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(125),topRight: Radius.circular(125))
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 60,),
                      BlackTextWidget(text: "Buy Premium \n Quality Fruits"),
                      SizedBox(height: 20,),
                      GreyText(text: "Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy"),
                      SizedBox(height: 40,),
                      GreenTextButton(text: "Get started", ontap: (){}),
                      SizedBox(height: 30,),
                    ],
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}
