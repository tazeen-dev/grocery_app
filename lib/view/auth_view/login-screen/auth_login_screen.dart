import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/password-feild.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/components/textfield.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
import '../../../controller/utils/constants/appimages/app_images_widget.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 690,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AppImages.female3,),fit: BoxFit.cover,),
              ),
        ),
            Column(
              children: [
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    children: [
                      Image(image: AssetImage(AppIcons.backicon)),
                      SizedBox(width: 100,),
                      Text('Welcome',style: TextStyle(color: Colors.white,
                          fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Poppins'),),
                    ],
                  ),
                ),
                SizedBox(height: 400,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:AppColors.whiteColor,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15,),
                        BlackTextWidget(text: 'Sign in to your account',fontWeight:
                        FontWeight.w400,fontSize: 15,textalignn: TextAlign.start,textColor: AppColors.greyColor,),
                        SizedBox(height: 20,),
                        TextFeildWidget(hintext: 'enter the email',color: AppColors.whiteColor,
                          prefixIcons:Icons.email_outlined, controller:emailController,textInputType: TextInputType.emailAddress, ),
                        PasswordWidget(hintext: 'enter the password', prefixIcons:Icons.lock_outline, controller: passwordController),
                       SizedBox(height: 10,),
                        Row(
                            children: [
                              Image(image: AssetImage(AppIcons.icon2)),
                              SizedBox(width:3,),
                              BlackTextWidget(text: 'Remember me',fontSize: 15,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                              SizedBox(width: 3,),
                              BlackTextWidget(text: 'Forgot password',fontWeight: FontWeight.w500,fontSize: 15,textColor: AppColors.bluecolor,)
                              ,
                            ]
                        ),
                        SizedBox(height: 25,),
                        GreenTextButton(text: 'Login', ontap: (){}),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BlackTextWidget(text: 'Don’t have an account ?',fontSize: 15,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                            InkWell(
                                onTap: (){},
                                child: BlackTextWidget(text: 'Sign up',fontSize: 15,fontWeight: FontWeight.w500,))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

                  ]
            ),
      )
    );

  }
}
