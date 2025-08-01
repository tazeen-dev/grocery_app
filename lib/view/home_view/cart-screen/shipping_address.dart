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
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController addressController=TextEditingController();
  TextEditingController cityController=TextEditingController();
  TextEditingController zipcodeController=TextEditingController();
  TextEditingController phonenumberController=TextEditingController();
  TextEditingController countryController=TextEditingController();
  bool isswitched=false;
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
              onTap: () {
                Navigator.pop(context);
              },
              child: Image(
                image: AssetImage(AppIcons.backicon),
                color: AppColors.blackColor,
              )),
        ),
      body: SingleChildScrollView(
        child: Column(
         children: [
           SizedBox(height: 25,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
         CircleAvatar(
           radius: 25,
           backgroundColor: AppColors.DarkGreen,
           child: Icon(Icons.done,color: AppColors.whiteColor,),
         ),
         CircleAvatar(
           radius: 25,
           backgroundColor: AppColors.DarkGreen,
           child: Text('2',style: TextStyle(color: AppColors.whiteColor),),
         ),
         CircleAvatar(
           radius: 25,
           backgroundColor: AppColors.whiteColor,
           child:Text('3',style: TextStyle(color: AppColors.greyColor),),
         ),
             ],
           ),
           SizedBox(height: 5,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
         Text('Delivery',style: TextStyle(color: AppColors.greyColor),),
         Text('Address',style: TextStyle(color: AppColors.greyColor),),
         Text('Payment',style: TextStyle(color: AppColors.greyColor),),
        
             ],
           ),
           SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 12.0),
             child: TextFeildWidget(
           hintext: 'name',
           prefixIcons: Icons.account_circle_outlined,
           controller: nameController,
           color: AppColors.whiteColor),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 12.0),
             child: TextFeildWidget(
           hintext: 'email',
           prefixIcons: Icons.email_outlined,
           controller: emailController,
           color: AppColors.whiteColor),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 12.0),
             child: TextFeildWidget(
           hintext: 'Phone number',
           prefixIcons: Icons.phone_outlined,
           controller: phonenumberController,
           color: AppColors.whiteColor),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 12.0),
             child: TextFeildWidget(
           hintext: 'Address',
           prefixIcons: Icons.location_on,
           controller: addressController,
           color: AppColors.whiteColor),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 12.0),
             child: TextFeildWidget(
           hintext: 'Zip code',
           prefixIcons: Icons.margin,
           controller: zipcodeController,
           color: AppColors.whiteColor),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 12.0),
             child: TextFeildWidget(
           hintext: 'city',
           prefixIcons: Icons.location_city_sharp,
           controller: cityController,
           color: AppColors.whiteColor),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 12.0),
             child: TextFeildWidget(
           hintext: 'Country',
           prefixIcons: Icons.language,
           controller: countryController,
           color: AppColors.whiteColor),
           ),
           Row(
             children: [
         Transform.scale(
           scale: 0.5,
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
        
         BlackTextWidget(text: 'Save this address',fontWeight: FontWeight.w600,fontSize: 12,),
           ],
           ),
           SizedBox(height: 50),
           GreenTextButton(text: 'Next', ontap:(){})
         ],
        ),
      ),
    );
  }
}