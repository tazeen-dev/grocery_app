import 'package:flutter/material.dart';
import 'package:grocery_app/view/auth_view/signup-screen/auth_signup_screen.dart';
import '../../controller/components/grey-text.dart';
import '../../controller/components/text-class.dart';
import '../../controller/components/welcome_button.dart';
import '../../controller/utils/constants/appcolors/app_color.dart';
import '../../controller/utils/constants/appicons/app_icons.dart';
import 'login-screen/auth_login_screen.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
            children: [
              Container(
                height:500.2119140625,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/female1.png'),fit:BoxFit.cover),
                ),
              ),
              Column(
                children: [
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(children: [
                    Image.asset(AppIcons.backicon),
                    SizedBox(width: 60,),
                    BlackTextWidget(text: 'Welcome',textColor: AppColors.whiteColor,fontSize: 18,fontWeight: FontWeight.w600,)],),
                ),
                Spacer(),
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      BlackTextWidget(text: 'Welcome',
                        textalignn: TextAlign.start,
                      fontSize:25,
                      fontWeight: FontWeight.w600,),
                      GreyText(text: 'Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy',
                        textalign: TextAlign.start,),
                      SizedBox(height: 10,),
                      WelcomeButton(text: 'Continue with google',textalign:
                      TextAlign.center, ontap: (){}, imageicon: AppIcons.google,background: AppColors.whiteColor,),
                      SizedBox(height: 15,),
                      WelcomeButton(text: 'Create an account', ontap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));}, imageicon: AppIcons.person2,
                        textColor: AppColors.whiteColor,gradients: LinearGradient(colors:[AppColors.LightGreen,AppColors.DarkGreen
                        ]),),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          BlackTextWidget(text: 'Already have an account ?',textColor: AppColors.greyColor,
                          fontWeight: FontWeight.w300,fontSize: 15,),
                          InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                            },
                            child: BlackTextWidget(text: 'Login',
                              fontWeight: FontWeight.bold,fontSize: 15,),
                          ),
                        ],
                      )


                    ],
                    ),
                  ),
                )
              ],)
            ]
    ));
  }
}

