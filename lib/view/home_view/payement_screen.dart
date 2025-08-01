import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/textfield.dart';
import '../../controller/components/text-class.dart';
import '../../controller/utils/constants/appcolors/app_color.dart';
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
              BlackTextWidget(text: 'Delivery',fontWeight: FontWeight.w600,fontSize: 15,textColor: AppColors.greyColor,),
              BlackTextWidget(text: 'Address',fontWeight: FontWeight.w600,fontSize: 15,textColor: AppColors.greyColor,),
              BlackTextWidget(text: 'Payment',fontWeight: FontWeight.w600,fontSize: 15,textColor: AppColors.greyColor,),

            ],
          ),
          Row(
            children: [
              SizedBox(height: 100,width: 100,
                child: Card(
                  color: AppColors.whiteColor,
                  child: Column(
                    children: [
                      Image(image: AssetImage(AppIcons.paypal)),
                      BlackTextWidget(text: 'Paypal',textColor: AppColors.greyColor,fontWeight: FontWeight.w500,fontSize: 10,)

                    ],
                  ),
                ),
              ),
              SizedBox(height: 100,width: 100,
                child: Card(
                  color: AppColors.whiteColor,
                  child: Column(
                    children: [
                      Image(image: AssetImage(AppIcons.cardIcon)),
                      BlackTextWidget(text: 'Paypal',textColor: AppColors.greyColor,fontWeight: FontWeight.w500,fontSize: 10,)

                    ],
                  ),

                ),
              ),
              SizedBox(height: 100,width: 100,
                child: Card(
                  color: AppColors.whiteColor,
                  child: Column(
                    children: [
                      Image(image: AssetImage(AppIcons.appleIcon),),
                      BlackTextWidget(text: 'Paypal',textColor: AppColors.greyColor,fontWeight: FontWeight.w500,fontSize: 10,)
                    ],
                  ),
                ),
              ),
            ],
          ),
          TextFeildWidget(hintext: 'Name on the card', prefixIcons: Icons.account_circle_outlined, controller:, color:
          AppColors.whiteColor),
          TextFeildWidget(hintext: 'Card number', prefixIcons: Icons.credit_card, controller: controller, color: AppColors.whiteColor),
          TextFeildWidget(hintext: 'Month / Year', prefixIcons: Icons.date_range_outlined, controller: controller, color: AppColors.whiteColor)
        ],
      ),
    );
  }
}
