import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
class MyAddressScreen extends StatelessWidget {
  const MyAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(text: 'My Address',fontWeight: FontWeight.w500,fontSize: 18,),
        centerTitle: true,
        leading: Image(image: AssetImage(AppIcons.backicon)),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.add_circle_outline,size: 10,color: AppColors.blackColor,))
        ],
      ),
      body: Column(
        children: [
          Container(
            height:474 ,
            width: 386,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
            ),
        child: Column(
            children: [
        Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Color(0xffEBFFD7),
                shape: BoxShape.circle,
              ),
              child: Image(image: AssetImage(AppIcons.order,),),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlackTextWidget(text: 'Order #90897 ',fontSize: 18,fontWeight: FontWeight.w600,),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Placed on October 19 2021",
                          style: TextStyle(color: Colors.grey)),
                      Icon(Icons.expand_circle_down_outlined,color: AppColors.greencolor,),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text("Items: 10"),
                      SizedBox(width: 16),
                      Text("Items: \$16.90"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
              Divider(thickness: 1,color:   AppColors.greyColor,),
              Row(
                children: [

                ],
              )
      ]
          ),
    ),
        ],
      ),
    );
  }
}
