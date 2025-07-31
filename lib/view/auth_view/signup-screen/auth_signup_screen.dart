import 'package:flutter/material.dart';
import '../../../controller/components/green_text_button.dart';
import '../../../controller/components/grey-text.dart';
import '../../../controller/components/password-feild.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/components/textfield.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
import '../../../controller/utils/constants/appimages/app_images_widget.dart';
import '../../home_view/bottom_bar.dart';
import '../login-screen/auth_login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            height: screenHeight * 0.47,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.female2),
                fit: BoxFit.cover,
              ),
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                // Back button & title
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
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F5F9),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlackTextWidget(
                        text: 'Create account',
                        fontWeight: FontWeight.w600,
                        fontSize: 26,
                        textalignn: TextAlign.start,
                      ),
                      BlackTextWidget(
                        text: 'Quickly create account',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        textalignn: TextAlign.start,
                        textColor: AppColors.greyColor,
                      ),
                      SizedBox(height: 15),
                      TextFeildWidget(
                        hintext: 'enter the email',
                        prefixIcons: Icons.email_outlined,
                        controller: emailController,
                        textInputType: TextInputType.emailAddress,
                        color: AppColors.whiteColor,
                      ),
                      SizedBox(height: 10),
                      TextFeildWidget(
                        hintext: 'enter the phone number',
                        prefixIcons: Icons.phone,
                        controller: phoneNumberController,
                        textInputType: TextInputType.phone,
                        color: AppColors.whiteColor,
                      ),
                      SizedBox(height: 10),
                      PasswordWidget(
                        hintext: 'enter the password',
                        prefixIcons: Icons.lock_outline,
                        controller: passwordController,
                      ),
                      SizedBox(height: 20),
                      GreenTextButton(
                        text: 'Signup',
                        ontap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>BottomNav()),
                          );
                        },
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GreyText(text: 'Already have an account?'),
                          SizedBox(width: 8),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginScreen()),
                              );
                            },
                            child: BlackTextWidget(
                              text: 'Login',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 15),
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
