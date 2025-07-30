import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/components/password-feild.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/components/textfield.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  TextEditingController passwordController=TextEditingController();
  TextEditingController passwordConfirmController=TextEditingController();
  TextEditingController checkPasswordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(text: 'About me',fontSize: 
        18,fontWeight: FontWeight.w500,),
        centerTitle: true,
        leading: InkWell(onTap: (){
          Navigator.pop(context);
        },
            child: Image(image: AssetImage(AppIcons.backicon,),color: AppColors.blackColor,)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25,),
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
              SizedBox(height: 10,),
              TextFeildWidget(hintext: 'Current password', prefixIcons: Icons.lock_outline, controller: passwordController,color: AppColors.whiteColor),
              PasswordWidget(hintext: 'password', prefixIcons: Icons.lock_outline, controller: checkPasswordController,),
              TextFeildWidget(hintext: 'Confirm password', prefixIcons: Icons.lock_outline, controller: passwordConfirmController,color: AppColors.whiteColor),
             SizedBox(height: 60,),
              GreenTextButton(text: 'Save settings', ontap: (){})
            ],
          ),
        ),
      ),
    );
  }
}

