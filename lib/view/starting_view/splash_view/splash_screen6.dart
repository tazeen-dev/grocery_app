// import 'package:flutter/material.dart';
// import 'package:grocery_app/controller/components/text-class.dart';
// import 'package:grocery_app/controller/components/green_text_button.dart';
// import 'package:grocery_app/controller/components/grey-text.dart';
// import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
// class SplashScreen6 extends StatelessWidget {
//   const SplashScreen6({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// body: Stack(
//   children: [
//     Image(image: AssetImage('assets/images/welcome4.png')),
//     Column(
//       children: [
//         Spacer(),
//         Container(
//           width:double.infinity,
//           height: 350.0994873046875,
//           decoration: BoxDecoration(
//             color: AppColors.whiteColor,
//             borderRadius: BorderRadius.only(topLeft: Radius.circular(150),topRight: Radius.circular(150))
//           ),
//           child: Column(
//             children: [
//               SizedBox(height: 50,),
//               BlackTextWidget(text: "Buy Premium \n Quality Fruits"),
//               SizedBox(height: 10,),
//               GreyText(text: "Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy"),
//               SizedBox(height: 40,),
//               GreenTextButton(text: "Get started", ontap: (){}),
//               SizedBox(height: 30,),
//             ],
//           )
//         )
//       ],
//     )
//   ],
// ),
//     );
//   }
// }
//
import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/view/starting_view/intro_view/onboarding_view.dart';
import '../../../controller/components/custum_clipper.dart';

class SplashScreen6 extends StatelessWidget {
  const SplashScreen6({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/welcome4.png',
            height: screenHeight,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              const Spacer(),
              ClipPath(
                clipper: TopRoundedClipper(),
                child: Container(
                  width: double.infinity,
                  height: screenHeight * 0.45,
                  color: AppColors.whiteColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: screenHeight * 0.05),
                      BlackTextWidget(
                        text: "Buy Premium \n Quality Fruits",
                      ),
                      SizedBox(height: screenHeight * 0.015),
                      GreyText(
                        text: "Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy",
                      ),
                      SizedBox(height: screenHeight * 0.04),
                      GreenTextButton(
                        text: "Get started",
                        ontap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoarding()));
                        },
                      ),
                      SizedBox(height: screenHeight * 0.03), // ~25-30 px
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

