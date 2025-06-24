import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/view/auth_view/varification_screen/otp_screen.dart';

import '../../../controller/utils/constants/appicons/app_icons.dart';
class VeryfyNumber extends StatefulWidget {
  @override
  _VeryfyNumberState createState() => _VeryfyNumberState();
}
class _VeryfyNumberState extends State<VeryfyNumber> {
  TextEditingController phoneController = TextEditingController();
  List <Map<String,String>> countries=[
  {'name': 'Pakistan', 'flag': '🇵🇰', 'code': '+92'},
  {'name': 'India', 'flag': '🇮🇳', 'code': '+91'},
  {'name': 'USA', 'flag': '🇺🇸', 'code': '+1'},
  {'name': 'UK', 'flag': '🇬🇧', 'code': '+44'},
];
  late Map<String, String> selectedCountry;
  @override
  void initState() {
    super.initState();
    selectedCountry = countries[2];
  }

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
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 95,),
            BlackTextWidget(text: 'Verify your number',fontWeight: FontWeight.w600,fontSize: 25,),
            SizedBox(height: 10,),
            GreyText(text: 'Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy'),
           SizedBox(height: 40,),
            Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DropdownButtonHideUnderline(
              child: DropdownButton<Map<String, String>>(
              value: selectedCountry,
              items: countries.map((country) {
                return DropdownMenuItem<Map<String, String>>(
                  value: country,
                  child: Row(
                    children: [
                      Text(country['flag']??'',),
                      SizedBox(width: 5),
                      Text(country['code']??'',),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCountry = value!;
                });
              },
              ),
              ),),
              SizedBox(width: 5),
              Expanded(
                child: TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: '2055550145',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: AppColors.whiteColor,)
                    ),
                    filled: true,
                    fillColor: AppColors.whiteColor,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.whiteColor),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  style: TextStyle(color: AppColors.blackColor),
                ),
              ),
            ],),
            SizedBox(
              height: 30,
            ),
            GreenTextButton(text: 'Next', ontap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
            }),
            SizedBox(height: 10,),
            BlackTextWidget(text: 'Resend confirmation code (1:23)',fontSize: 15,fontWeight: FontWeight.w400,)
          ],
        ),
      ),
    );
  }
}

