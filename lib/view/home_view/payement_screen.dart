import 'package:flutter/material.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';

import '../../controller/components/text-class.dart';
import '../../controller/utils/constants/appicons/app_icons.dart';
class PayementScreen extends StatefulWidget {
  const PayementScreen({super.key});

  @override
  State<PayementScreen> createState() => _PayementScreenState();
}

class _PayementScreenState extends State<PayementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(text: 'Payment Method',fontWeight: FontWeight.w500,fontSize: 18,),
        centerTitle: true,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image(image: AssetImage(AppIcons.backicon),color: AppColors.blackColor,)),
      ),
      body: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
       // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.DarkGreen,
                child: Icon(Icons.check,color: AppColors.whiteColor,),
              ),
              Container(
                height: 2,
                width: 100,
                decoration: BoxDecoration(
                    color: AppColors.DarkGreen
                ),
              ),              CircleAvatar(
                backgroundColor: AppColors.DarkGreen,
                child: Icon(Icons.check,color: AppColors.whiteColor,),
              ),
              Container(
                height: 2,
                width: 100,
                decoration: BoxDecoration(
                  color: AppColors.DarkGreen
                ),
              ),
              CircleAvatar(
                backgroundColor: AppColors.DarkGreen,
                child: Icon(Icons.check,color: AppColors.whiteColor,),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlackTextWidget(text: 'Delivery',fontWeight: FontWeight.w600,fontSize: 18,textColor: AppColors.greyColor,),
              BlackTextWidget(text: 'Address',fontWeight: FontWeight.w600,fontSize: 18,textColor: AppColors.greyColor,),
              BlackTextWidget(text: 'Payment',fontWeight: FontWeight.w600,fontSize: 18,textColor: AppColors.greyColor,),

            ],
          ),
          Row(
            children: [
              SizedBox(height: 200,width: 200,
                child: Card(
                  color: AppColors.greyColor,
                  child: Icon(Icons.paypal),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
