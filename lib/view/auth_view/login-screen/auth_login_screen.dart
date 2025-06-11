import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/black_text_widget.dart';
import 'package:grocery_app/controller/components/grey_text_widget.dart';
import 'package:grocery_app/controller/components/textformfeild.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 896,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/Mask Group (4).png'),fit: BoxFit.cover),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back,color: AppColors.whiteColor,size: 25,),
                  SizedBox(width: 50,),
                  Text('Welcome',style: TextStyle(color: Colors.white,
                      fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins'),),
                ],
              ),
              Spacer(),
              Container(
                height:378,
                width: double.infinity,
                decoration: BoxDecoration(
                  color:AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Column(
                    children: [
                      BlackTextWidget(text: 'Sign in to your account',textColor: AppColors.greyColor,fontWeight:
                      FontWeight.w400,fontSize: 15,textalignn: TextAlign.start,),
                      SizedBox(height: 20,),
                   //   TextFeildWidget(hintext: 'Email Address', textcolors:, prefixIcon: prefixIcon, controller: controller)
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
