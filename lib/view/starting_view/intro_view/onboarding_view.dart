import 'package:flutter/material.dart';

import '../../../controller/components/dot-indicator.dart';
import '../../../controller/components/green_text_button.dart';
import '../../../controller/components/grey-text.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../auth_view/welcome1.dart';
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
            padding: const EdgeInsets.only(left: 30.0,bottom: 18),
            child: GreenTextButton(text: 'Get started', ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
            },),
          ):
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    OnboardingController.animateToPage(
                        2,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  child: BlackTextWidget(text: 'Skip',textColor:AppColors.greyColor,fontSize: 15
                    ,fontWeight: FontWeight.w500,),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    if (currentPage < 2) {
                      OnboardingController .animateToPage(
                        currentPage + 1,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: BlackTextWidget(text: 'Next',textColor:
                  AppColors.DarkGreen,fontWeight:
                  FontWeight.w500,fontSize: 15,),
                ),
              ],
            ),
          ),
      body:
          Column(
            children: [
              Expanded(
                child: PageView(
                  controller: OnboardingController,
                  onPageChanged: (a){
                    setState(() {
                      currentPage=a;
                    });
                  },
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height:120,),
                      Image.asset('assets/images/onbording3.png',fit: BoxFit.cover,),
                      BlackTextWidget(text: "Buy Grocery"),
                      SizedBox(height: 10,),
                      GreyText(text: "Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy"),

                                  ],
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 120,),
                          Image.asset('assets/images/Delivery-cuate 1.png',fit: BoxFit.cover,),
                          BlackTextWidget(text: "Fast Delivery"),
                          SizedBox(height: 10,),
                          GreyText(text: "Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy",textalign: TextAlign.center,),
                        ],
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 100,),
                        Image.asset('assets/images/onboarding4.png',fit: BoxFit.cover,),
                        BlackTextWidget(text: 'Enjoy Quality Food'),
                      SizedBox(height: 10,),
                      GreyText(text: 'Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy'),
                            ] ),
                  ),
                ]
                    ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120.0,vertical: 100.0),
                child: DotIndicator(currentIndex: currentPage, itemCount: 3),
              ),
            ],
          ),


    );
  }
}

