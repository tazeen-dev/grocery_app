import 'package:flutter/material.dart';

import '../../../controller/components/green_text_button.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/components/textfield.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController adddresController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  TextEditingController CountryController = TextEditingController();

  bool saveThisAddress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(
          text: 'My Address',
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        centerTitle: true,
        leading: Image(
          image: AssetImage(AppIcons.backicon),
          color: AppColors.blackColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              SizedBox(height: 35),
              TextFeildWidget(
                hintext: 'Name',
                prefixIcons: Icons.person_outline_sharp,
                controller: nameController,
                color: AppColors.whiteColor,
              ),
              TextFeildWidget(
                hintext: 'Email Address',
                prefixIcons: Icons.email_outlined,
                controller: emailController,
                color: AppColors.whiteColor,
              ),
              TextFeildWidget(
                hintext: 'Phone number',
                prefixIcons: Icons.phone,
                controller: phoneNumberController,
                color: AppColors.whiteColor,
              ),
              TextFeildWidget(
                hintext: 'Address',
                prefixIcons: Icons.person_pin_circle,
                controller: adddresController,
                color: AppColors.whiteColor,
              ),
              TextFeildWidget(
                hintext: 'Zip code',
                prefixIcons: Icons.margin,
                controller: zipcodeController,
                color: AppColors.whiteColor,
              ),
              TextFeildWidget(
                hintext: 'City',
                prefixIcons: Icons.location_city_outlined,
                controller: cityController,
                color: AppColors.whiteColor,
              ),
              TextFeildWidget(
                hintext: 'Country',
                prefixIcons: Icons.language,
                controller: CountryController,
                color: AppColors.whiteColor,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: BlackTextWidget(
                      text: 'Save this address',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Transform.scale(
                    scale: 0.8, // adjust size (e.g., 0.8 = 80%)
                    child: Switch(
                      value: saveThisAddress,
                      activeColor: AppColors.greencolor,           // thumb when active
                      activeTrackColor: AppColors.greencolor.withOpacity(0.5), // track when active
                      inactiveThumbColor: AppColors.greyColor,    // thumb when inactive
                      inactiveTrackColor: Colors.grey.shade300,    // track when inactive
                      onChanged: (val) {
                        setState(() {
                          saveThisAddress = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              GreenTextButton(
                text: 'Add address',
                ontap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
