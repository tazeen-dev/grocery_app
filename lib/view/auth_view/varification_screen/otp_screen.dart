import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/view/home_view/home-screen/home_screen1.dart';

import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(text: 'Verify Number',fontWeight: FontWeight.w500,fontSize: 18,),
        centerTitle: true,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image(image: AssetImage(AppIcons.backicon),color: AppColors.blackColor,)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60,),
        BlackTextWidget(text: 'Verify your number',fontSize:20 ,fontWeight: FontWeight.w600,),
            SizedBox(height: 10,),
            GreyText(text: 'Enter your OTP code below'),
            SizedBox(height: 60,),
            Row(
              children: [
                SizedBox(width: 8,),
                Expanded(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: TextFormField(
                     decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(
                           color: AppColors.whiteColor,
                         ),
                       ),
                       focusedBorder:OutlineInputBorder(
                         borderSide: BorderSide(
                       color: AppColors.whiteColor,
                       ),
                     ),
                     fillColor: AppColors.whiteColor,
                     filled: true,
                       hintText: '1',
                    ),
                      style: TextStyle(color: AppColors.whiteColor),
                    ),
                  ),
                ),
                SizedBox(width:  8,),
                Expanded(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: AppColors.whiteColor,
                          ),
                        ),
                        focusedBorder:OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.whiteColor,
                          ),
                        ),
                        fillColor: AppColors.whiteColor,
                        filled: true,
                        hintText: '5',
                      ),
                      style: TextStyle(color: AppColors.whiteColor),
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Expanded(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: AppColors.whiteColor,
                          ),
                        ),
                        focusedBorder:OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.whiteColor,
                          ),
                        ),
                        fillColor: AppColors.whiteColor,
                        filled: true,
                        hintText: '2',
                      ),
                      style: TextStyle(color: AppColors.whiteColor),
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Expanded(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: AppColors.whiteColor,
                          ),
                        ),
                        focusedBorder:OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.whiteColor,
                          ),
                        ),
                        fillColor: AppColors.whiteColor,
                        filled: true,
                        hintText: '3',
                      ),
                      style: TextStyle(color: AppColors.whiteColor),
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Expanded(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: AppColors.whiteColor,
                          ),
                        ),
                        focusedBorder:OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.whiteColor,
                          ),
                        ),
                        fillColor: AppColors.whiteColor,
                        filled: true,
                        hintText: '07',
                      ),
                      style: TextStyle(color: AppColors.whiteColor),
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Expanded(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: AppColors.whiteColor,
                          ),
                        ),
                        focusedBorder:OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.whiteColor,
                          ),
                        ),
                        fillColor: AppColors.whiteColor,
                        filled: true,
                        hintText: '06',
                      ),
                      style: TextStyle(color: AppColors.whiteColor),
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),
            GreenTextButton(text: 'Next', ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen1()));
            }),
            SizedBox(height: 20,),
            Text('Did’nt receive the code ?'),
            BlackTextWidget(text: 'Resend a new code',fontWeight: FontWeight.w500,fontSize: 15,),
          ],
        ),
      ),
    );
  }
}
