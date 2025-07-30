import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/password-feild.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/components/textfield.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
import 'package:grocery_app/view/auth_view/signup-screen/auth_signup_screen.dart';
import '../../../controller/utils/constants/appimages/app_images_widget.dart';
import '../varification_screen/forgetpassword_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        children: [
          Container(
            height: screenHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.female3),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 10),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(AppIcons.backicon),
                      ),
                      SizedBox(width: 80),
                      Text(
                        'Welcome',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    // borderRadius: const BorderRadius.only(
                    //   topLeft: Radius.circular(5),
                    //   topRight: Radius.circular(5),
                    // ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlackTextWidget(
                        text: 'Sign in to your account',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        textalignn: TextAlign.start,
                        textColor: AppColors.greyColor,
                      ),
                      SizedBox(height: 20),
                      TextFeildWidget(
                        hintext: 'enter the email',
                        color: AppColors.whiteColor,
                        prefixIcons: Icons.email_outlined,
                        controller: emailController,
                        textInputType: TextInputType.emailAddress,
                      ),
                      PasswordWidget(
                        hintext: 'enter the password',
                        prefixIcons: Icons.lock_outline,
                        controller: passwordController,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(AppIcons.icon2),
                          SizedBox(width: 5),
                          BlackTextWidget(
                            text: 'Remember me',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            textColor: AppColors.greyColor,
                          ),
                          Spacer(),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetpasswordScreen()));
                            },
                            child: BlackTextWidget(
                              text: 'Forgot password',
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              textColor: AppColors.bluecolor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      GreenTextButton(
                        text: 'Login',
                        ontap: () {},
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BlackTextWidget(
                            text: 'Don’t have an account ?',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            textColor: AppColors.greyColor,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                            },
                            child: BlackTextWidget(
                              text: ' Sign up',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
