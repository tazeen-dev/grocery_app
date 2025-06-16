import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController OnboardingController=PageController();
  int currentPage=0;
 nextPage(){
   if(currentPage<2){
     OnboardingController.animateToPage(currentPage++, duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
   }
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: currentPage==2?
          Padding(
            padding: const EdgeInsets.only(left: 30.0,bottom: 40),
            child: GreenTextButton(text: 'Get started', ontap: (){},),
          ):
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                BlackTextWidget(text: 'Skip',textColor:AppColors.greyColor,fontSize: 15
                  ,fontWeight: FontWeight.w500,),
                Spacer(),
                BlackTextWidget(text: 'Next',textColor:
                AppColors.DarkGreen,fontWeight:
                FontWeight.w500,fontSize: 15,),
              ],
            ),
          ),
      body: PageView(
        controller: OnboardingController,
        onPageChanged: (a){
          setState(() {
            currentPage=a;
          });
        },
        children: [
          Column(
                      children: [
                        SizedBox(height:100,),
          Image.asset('assets/images/onbording3.png',fit: BoxFit.cover,),
          Spacer(),
          BlackTextWidget(text: "Buy Grocery"),
          SizedBox(height: 10,),
          GreyText(text: "Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy"),
                        SizedBox(height: 140,),
                      ],
                ),
          Column(
            children: [
              SizedBox(height: 100,),
              Image.asset('assets/images/Delivery-cuate 1.png',fit: BoxFit.cover,),
              Spacer(),
              BlackTextWidget(text: "Fast Delivery"),
              SizedBox(height: 10,),
              GreyText(text: "Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy",textalign: TextAlign.center,),
              SizedBox(height: 130,)
            ],
          ),
        Column(
          children: [
            SizedBox(height: 80,),
            Image.asset('assets/images/onboarding4.png',fit: BoxFit.cover,),
            BlackTextWidget(text: 'Enjoy Quality Food'),
          SizedBox(height: 10,),
          GreyText(text: 'Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy'),
            SizedBox(height: 150,),
                ] ),
      ]
    ),
    );
  }
}

