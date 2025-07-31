import 'package:flutter/material.dart';
import '../../../controller/components/green_text_button.dart';
import '../../../controller/components/grey-text.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
import 'otp_screen.dart';

class VeryfyNumber extends StatefulWidget {
  @override
  _VeryfyNumberState createState() => _VeryfyNumberState();
}

class _VeryfyNumberState extends State<VeryfyNumber> {
  TextEditingController phoneController = TextEditingController();

  List<Map<String, String>> countries = [
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
    final size = MediaQuery.of(context).size; // For responsiveness

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(
          text: 'Verify Number',
          fontWeight: FontWeight.w500,
          fontSize: size.width * 0.045,
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
                fontWeight: FontWeight.w600,
                fontSize: size.width * 0.07,
              ),
              SizedBox(height: size.height * 0.01),
              GreyText(
                text: 'Lorem ipsum dolor sit amet, consetetur \n sadipscing elitr, sed diam nonumy',
              ),
              SizedBox(height: size.height * 0.05),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<Map<String, String>>(
                        value: selectedCountry,
                        items: countries.map((country) {
                          return DropdownMenuItem<Map<String, String>>(
                            value: country,
                            child: Row(
                              children: [
                                Text(country['flag'] ?? ''),
                                SizedBox(width: 5),
                                Text(country['code'] ?? ''),
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
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: '2055550145',
                        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        filled: true,
                        fillColor: AppColors.whiteColor,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      style: TextStyle(color: AppColors.blackColor),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.04),
              GreenTextButton(
                text: 'Next',
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));
                },
              ),
              SizedBox(height: 12),
              BlackTextWidget(
                text: 'Resend confirmation code (1:23)',
                fontSize: size.width * 0.04,
                fontWeight: FontWeight.w400,
              )
            ],
          ),
        ),
      ),
    );
  }
}
