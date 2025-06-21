import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/grey-text.dart';

import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
class NotifictionScreen extends StatefulWidget {
  const NotifictionScreen({super.key});

  @override
  State<NotifictionScreen> createState() => _NotifictionScreenState();
}

class _NotifictionScreenState extends State<NotifictionScreen> {
  List<String> text=[
    'Allow Notifcations',
    'Email Notifcations',
    'Order Notifcations',
    'General Notifcations',
  ];
  List<String> images=[
    AppIcons.allownotification,
    AppIcons.icon2,
    AppIcons.icon2,
    AppIcons.allownotification,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(text: 'Notifications',fontWeight: FontWeight.w600,fontSize: 18,),
        centerTitle: true,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Image(image: AssetImage(AppIcons.backicon),color:
          AppColors.blackColor,),
        ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              SizedBox(height: 30,),
              SizedBox(height:500,
                child: ListView.builder(
                  itemCount: text.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index){
                  return
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,),
                        child: Container(
                          padding: EdgeInsets.only(left: 10.0),
                          height: 100,
                          width:double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15,),
                              BlackTextWidget(text:text[index] ,fontWeight: FontWeight.w600,fontSize: 15,),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  BlackTextWidget(text: 'Lorem ipsum dolor sit amet, consetetur sadi \n  pscing elitr, sed diam nonumym',
                                      fontSize: 10,fontWeight: FontWeight.w400,textColor: AppColors.greyColor,),
                                    SizedBox(width: 10,),
                                    Image(image: AssetImage(images[index])),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
