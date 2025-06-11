import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/black_text_widget.dart';
import 'package:grocery_app/controller/components/grey_text_widget.dart';
import 'package:grocery_app/controller/components/welcome_button.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/female1.png'),fit: BoxFit.cover)
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(height: 40,),
                Row(children: [
                  Icon(Icons.arrow_back_outlined,color: Colors.white,),
                  SizedBox(width: 60,),
                  BlackTextWidget(text: 'Welcome',textColor: AppColors.whiteColor,fontSize: 18,fontWeight: FontWeight.w600,)],),
                Spacer(),
                Container(
                  height: 348,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                  ),
                  child: Column(
                    children: [
                    BlackTextWidget(text: 'Welcome',
                      textalignn: TextAlign.start,
                    fontSize:25,
                    fontWeight: FontWeight.w600,),
                    GreyText(text: 'Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy',
                      textalign: TextAlign.start,),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        BlackTextWidget(text: 'Already have an account ?',textColor: AppColors.greyColor,
                        fontWeight: FontWeight.w300,fontSize: 15,),
                        BlackTextWidget(text: 'Login',textColor: AppColors.LightGreen,
                          fontWeight: FontWeight.w300,fontSize: 15,),
                      ],
                    )


                  ],
                  ),
                )
              ],)
            ]
    ));
  }
}

