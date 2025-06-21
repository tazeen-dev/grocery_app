import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlackTextWidget(text: 'About me',fontSize: 
        18,fontWeight: FontWeight.w500,),
        centerTitle: true,
        leading: Image(image: AssetImage(AppIcons.backicon)),
      ),
      body: Column(
        children: [
          BlackTextWidget(text:'Personal Details',
            fontWeight: FontWeight.w600,fontSize: 18, ),
          SizedBox(height: 20,),
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
            ),
            child: Row(
              children: [
                Image(image: AssetImage(AppIcons.person)),
                SizedBox(width: 20,),
                GreyText(text: 'Russell Austin') ,             ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
            ),
            child: Row(
              children: [
                Icon(Icons.email_outlined,color: AppColors.greyColor,),
                SizedBox(width: 20,),
                GreyText(text: 'russell.partner@gmail.com') ,             ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
            ),
            child: Row(
              children: [
                Icon(Icons.phone,color: AppColors.greyColor,)
               , SizedBox(width: 20,),
                GreyText(text: '+1  202  555  0142 ') ,             ],
            ),
          ),
          SizedBox(height: 30,),
          BlackTextWidget(text:
          'Change Password',fontSize:18,fontWeight:
          FontWeight.w600,),
          T
        ],
      ),
    );
  }
}

