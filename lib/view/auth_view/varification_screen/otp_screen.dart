import 'package:flutter/material.dart';

import '../../../controller/components/green_text_button.dart';
import '../../../controller/components/grey-text.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
import '../../home_view/bottom_bar.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final otpFieldWidth = size.width * 0.12;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(
          text: 'Verify Number',
          fontWeight: FontWeight.w600,
          fontSize: size.width * 0.047,
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AppIcons.backicon, color: AppColors.blackColor),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.09),
              BlackTextWidget(
                text: 'Verify your number',
                fontSize: size.width * 0.058,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: size.height * 0.015),
              GreyText(text: 'Enter your OTP code below'),
              SizedBox(height: size.height * 0.06),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(6, (index) {
                  return SizedBox(
                    width: otpFieldWidth,
                    height: size.height * 0.065,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: index == 0
                            ? '1'
                            : index == 1
                            ? '5'
                            : index == 2
                            ? 'X'
                            : index == 3
                            ? 'X'
                            : index == 4
                            ? 'X'
                            : 'X',hintStyle: TextStyle(color: AppColors.blackColor,fontSize: size.height*0.02,fontWeight: FontWeight.bold),
                        filled: true,
                        fillColor: AppColors.whiteColor,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                      style: TextStyle(color: AppColors.blackColor),
                    ),
                  );
                }),
              ),

              SizedBox(height: size.height * 0.04),
              GreenTextButton(
                text: 'Next',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNav()));
                },
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                'Didn’t receive the code?',
                style: TextStyle(fontSize: size.width * 0.04),
              ),
              BlackTextWidget(
                text: 'Resend a new code',
                fontWeight: FontWeight.w500,
                fontSize: size.width * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
