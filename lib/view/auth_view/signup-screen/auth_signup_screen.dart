import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/password-feild.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/components/textfield.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
import '../../../controller/utils/constants/appimages/app_images_widget.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}
class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController phoneNumberController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              Container(
                height: 896,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(AppImages.female2,),fit: BoxFit.cover,),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 30,),
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
                  Spacer(),
                  Container(
                    height:350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color:AppColors.lightGrey,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          BlackTextWidget(text: 'Create account',fontWeight:
                          FontWeight.w600,fontSize: 26,textalignn: TextAlign.start,),
                          BlackTextWidget(text: 'Quickly create account',fontWeight:
                          FontWeight.w400,fontSize: 15,textalignn: TextAlign.start,textColor: AppColors.greyColor,),
                          SizedBox(height: 10,),
                          TextFeildWidget(hintext: 'enter the email',
                            prefixIcons:Icons.email_outlined, controller:emailController,textInputType: TextInputType.emailAddress, ),
                          TextFeildWidget(hintext: 'enter the phone number', prefixIcons:Icons.phone,
                            controller:phoneNumberController,textInputType: TextInputType.phone,),
                          PasswordWidget(hintext: 'enter the password', prefixIcons:Icons.lock_outline, controller: passwordController),

                          SizedBox(height: 20,),
                          GreenTextButton(text: 'Login', ontap: (){}),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BlackTextWidget(text: 'Already have an account ?',fontSize: 15,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                              InkWell(
                                  onTap: (){},
                                  child: BlackTextWidget(text: 'login',fontSize: 15,fontWeight: FontWeight.w500,))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ]
        )
    );

  }
}



