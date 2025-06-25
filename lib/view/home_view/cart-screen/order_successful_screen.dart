import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/grey-text.dart';

import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
class OrderSuccessfulScreen extends StatefulWidget {
  const OrderSuccessfulScreen({super.key});

  @override
  State<OrderSuccessfulScreen> createState() => _OrderSuccessfulScreenState();
}

class _OrderSuccessfulScreenState extends State<OrderSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(text: 'Order Success',fontWeight: FontWeight.w500,fontSize: 18,),
        centerTitle: true,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image(image: AssetImage(AppIcons.backicon),color: AppColors.blackColor,)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100,),
          Image(image: AssetImage(AppIcons.successfulorder)),
              SizedBox(height: 20,),
              BlackTextWidget(text: 'Your order was \n succesfull !',fontSize: 20,fontWeight: FontWeight.w600
                ,),SizedBox(height: 10,),
              BlackTextWidget(text: 'You will get a response within \n a few minutes.',fontWeight: FontWeight.w400,
                textColor: AppColors.greyColor,fontSize: 12,),
              SizedBox(height: 100,),
              GreenTextButton(text: 'Track order' , ontap: (){})
            ],
          ),
        ),
      ),
    );
  }
}

