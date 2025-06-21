import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/textfield.dart';

import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController phoneNumberController=TextEditingController();
  TextEditingController adddresController=TextEditingController();
  TextEditingController cityController=TextEditingController();
  TextEditingController zipcodeController=TextEditingController();
  TextEditingController CountryController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(text: 'My Address',fontWeight: FontWeight.w600,fontSize: 18,),
        centerTitle: true,
        leading: Image(image: AssetImage(AppIcons.backicon),color:
        AppColors.blackColor,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:18.0),
            child: Image(image: AssetImage(AppIcons.search2),color: AppColors.blackColor,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              SizedBox(height: 35,),
              TextFeildWidget(hintext: 'Name', prefixIcons:Icons.person_outline_sharp, controller:nameController),
              TextFeildWidget(hintext: 'Email Address', prefixIcons:Icons.email_outlined, controller: emailController),
              TextFeildWidget(hintext: 'Phone number', prefixIcons: Icons.phone, controller: phoneNumberController),
              TextFeildWidget(hintext: 'Address', prefixIcons: Icons.person_pin_circle, controller: adddresController),
              TextFeildWidget(hintext: 'Zip code', prefixIcons:Icons.margin , controller: zipcodeController),
              TextFeildWidget(hintext: 'city', prefixIcons: Icons.location_city_outlined, controller:cityController),
              TextFeildWidget(hintext: 'Country', prefixIcons: Icons.language, controller: CountryController),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 15,),
                  Image(image: AssetImage(AppIcons.icon2),color: AppColors.greencolor,),
                  SizedBox(width: 30,),
                  BlackTextWidget(text:'Save this address',fontSize: 12,fontWeight: FontWeight.w400,)
                ],
              ),
              SizedBox(height: 30,),
              GreenTextButton(text: 'Add address', ontap: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
