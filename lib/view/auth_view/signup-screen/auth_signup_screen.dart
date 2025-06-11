import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/black_text_widget.dart';
import 'package:grocery_app/controller/components/grey_text_widget.dart';
import 'package:grocery_app/controller/components/welcome_button.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/view/auth_view/login-screen/auth_login_screen.dart';
class SignUpScreen extends StatefulWidget {
   SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         Container(
           height: double.infinity,
           width: double.infinity,
           decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage('assets/images/female2.png'),fit: BoxFit.cover),
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 children: [
                   Icon(Icons.arrow_back,color: AppColors.whiteColor,size: 20,),
                   BlackTextWidget(text: 'Welcome',textColor: AppColors.whiteColor,textalignn: TextAlign.center,fontSize: 18,
                     fontWeight: FontWeight.w500,),
                   Spacer(),
                   Container(
                     height:466 ,
                     width: 414,
                     decoration: BoxDecoration(
                       color: AppColors.lightGrey,
                       borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                     ),
                     child: Column(
                       children: [
                         SizedBox(height: 38,),
                         BlackTextWidget(text: 'Create account',textalignn: TextAlign.start,
                           fontWeight: FontWeight.w600,fontSize: 25,textColor: AppColors.blackColor,),
                         SizedBox(height: 10,),
                         BlackTextWidget(text: 'Quickly create account',textColor: AppColors.greyColor,
                           textalignn: TextAlign.start,fontSize:15 ,fontWeight: FontWeight.w400,),
                         SizedBox(height: 20,),
                         Column(
                           children: [
                             TextFormField(
                               decoration: InputDecoration(
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(5),
                                   borderSide: BorderSide(color: AppColors.whiteColor),
                                 ),
                                 focusedBorder: OutlineInputBorder(
                                   borderSide: BorderSide(color: AppColors.whiteColor),
                                   borderRadius: BorderRadius.circular(5),
                                 ),
                                 filled: true,
                                 fillColor: AppColors.whiteColor,
                                 focusColor: AppColors.greyColor,
                                 constraints: BoxConstraints(maxHeight:60,maxWidth:380 ),
                                hintText: 'Email address' ,
                                 hintStyle: TextStyle(color: AppColors.greyColor,fontWeight:
                                 FontWeight.w500,fontSize:15 ,fontFamily: 'Poppins'),
                                 suffixIcon: Icon(Icons.email_outlined,color: AppColors.greyColor,),
                               ),
                               style: TextStyle(color: AppColors.greyColor),
                             ),
                           ],
                         ),
                         Spacer(),
                         Column(
                           children: [
                             TextFormField(
                         decoration: InputDecoration(
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(5),
                                   borderSide: BorderSide(color: AppColors.whiteColor),
                                 ),
                                 focusedBorder: OutlineInputBorder(
                                   borderSide: BorderSide(color: AppColors.whiteColor),
                                   borderRadius: BorderRadius.circular(5),
                                 ),
                                 filled: true,
                                 fillColor: AppColors.whiteColor,
                                 focusColor: AppColors.greyColor,
                                 constraints: BoxConstraints(maxHeight:60,maxWidth:380 ),
                                 hintText: 'Email address' ,
                                 hintStyle: TextStyle(color: AppColors.greyColor,fontWeight:
                                 FontWeight.w500,fontSize:15 ,fontFamily: 'Poppins'),
                                 suffixIcon: Icon(Icons.email_outlined,color: AppColors.greyColor,),
                               ),
                               style: TextStyle(color: AppColors.greyColor),
                             ),
                           ],
                         ),
                         Spacer(),
                         Column(
                           children: [
                             TextFormField(
                               controller: passwordController,
                               decoration: InputDecoration(
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(5),
                                   borderSide: BorderSide(color: AppColors.whiteColor),
                                 ),
                                 focusedBorder: OutlineInputBorder(
                                   borderSide: BorderSide(color: AppColors.whiteColor),
                                   borderRadius: BorderRadius.circular(5),
                                 ),
                                 filled: true,
                                 fillColor: AppColors.whiteColor,
                                 focusColor: AppColors.greyColor,
                                 constraints: BoxConstraints(maxHeight:60,maxWidth:380 ),
                                 hintText: 'Email address' ,
                                 hintStyle: TextStyle(color: AppColors.greyColor,fontWeight:
                                 FontWeight.w500,fontSize:15 ,fontFamily: 'Poppins'),
                                 suffixIcon: Icon(Icons.email_outlined,color: AppColors.greyColor,),
                               ),
                               style: TextStyle(color: AppColors.greyColor),
                             ),
                           ],
                         ),
                         Column(
                           children: [
                             Row(
                               children: [
                                 BlackTextWidget(text: 'Already have an account ?',textColor: AppColors.greyColor,fontWeight:
                                 FontWeight.w300,fontSize:15 ,),
                                 BlackTextWidget(text: 'Login',fontWeight: FontWeight.w300,fontSize: 15,),
                               ],
                             )
                           ],
                             )
                           ],
                         )
                     ),
                 ],
               )
             ],
           ),
         )
        ],
      ),
    );
  }

  TextEditingController emailController=TextEditingController();

  TextEditingController  phonenumberController=TextEditingController();

  TextEditingController passwordController=TextEditingController();
}

