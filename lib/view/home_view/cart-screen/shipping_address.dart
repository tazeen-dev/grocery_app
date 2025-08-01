import 'package:flutter/material.dart';
import '../../../controller/components/green_text_button.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/components/textfield.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  bool isswitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(
          text: 'Shipping Address',
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Image.asset(AppIcons.backicon, color: AppColors.blackColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              // Progress Indicator
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.DarkGreen,
                    child: Icon(Icons.done, color: AppColors.whiteColor),
                  ),
                  Expanded(
                    child: Container(height: 2, color: AppColors.DarkGreen),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.DarkGreen,
                    child: Text('2', style: TextStyle(color: AppColors.whiteColor)),
                  ),
                  Expanded(
                    child: Container(height: 2, color: AppColors.greyColor),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.whiteColor,
                    child: Text('3', style: TextStyle(color: AppColors.greyColor)),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Delivery'),
                  Text('Address'),
                  Text('Payment'),
                ],
              ),
              const SizedBox(height: 30),
              // Input Fields
              TextFeildWidget(
                hintext: 'Name',
                prefixIcons: Icons.account_circle_outlined,
                controller: nameController,
                color: AppColors.whiteColor,
              ),
              TextFeildWidget(
                hintext: 'Email',
                prefixIcons: Icons.email_outlined,
                controller: emailController,
                color: AppColors.whiteColor,
              ),
              TextFeildWidget(
                hintext: 'Phone number',
                prefixIcons: Icons.phone_outlined,
                controller: phonenumberController,
                color: AppColors.whiteColor,
              ),
              TextFeildWidget(
                hintext: 'Address',
                prefixIcons: Icons.location_on,
                controller: addressController,
                color: AppColors.whiteColor,
              ),
              TextFeildWidget(
                hintext: 'Zip Code',
                prefixIcons: Icons.margin,
                controller: zipcodeController,
                color: AppColors.whiteColor,
              ),
              TextFeildWidget(
                hintext: 'City',
                prefixIcons: Icons.location_city_sharp,
                controller: cityController,
                color: AppColors.whiteColor,
              ),
              TextFeildWidget(
                hintext: 'Country',
                prefixIcons: Icons.language,
                controller: countryController,
                color: AppColors.whiteColor,
              ),
              const SizedBox(height: 12),
              // Save Address Switch
              Row(
                children: [
                  Transform.scale(
                    scale: 0.8,
                    child: Switch(
                      value: isswitched,
                      onChanged: (value) {
                        setState(() {
                          isswitched = value;
                        });
                      },
                      activeColor: AppColors.DarkGreen,
                      inactiveThumbColor: AppColors.greyColor,
                    ),
                  ),
                  const SizedBox(width: 4),
                  BlackTextWidget(
                    text: 'Save this address',
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ],
              ),
              const SizedBox(height: 40),
              GreenTextButton(
                text: 'Next',
                ontap: () {
                  Navigator.pop(context); // You can update this to push next step
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
