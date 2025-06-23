import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appimages/app_images_widget.dart';
import 'package:grocery_app/view/home_view/reveiw/write_review.dart';

import '../../../controller/utils/constants/appicons/app_icons.dart';
class ReveiwScreen extends StatefulWidget {
  const ReveiwScreen({super.key});

  @override
  State<ReveiwScreen> createState() => _ReveiwScreenState();
}

class _ReveiwScreenState extends State<ReveiwScreen> {
  List<String> text=[
    'Haylie Aminoff',
    'Carla Septimus',
    'Carla George',
    'Maren Kenter',
  ];
  List <String> images=[
    AppImages.lemon,
    AppImages.homeimage,
    AppImages.lemon,
    AppImages.homeimage,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(text: 'Reviews',fontWeight: FontWeight.w500,fontSize: 18,),
        centerTitle: true,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image(image: AssetImage(AppIcons.backicon),color: AppColors.blackColor,)),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>WriteReview()));
          }, icon:Icon(Icons.add_circle_outline,size: 18,color: AppColors.blackColor,)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 700,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: text.length,
                  itemBuilder:
                      (context,index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Container(
                        height:169 ,
                        width: 380,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:AssetImage(images[index]) ,
                                ),
                                BlackTextWidget(text:text[index],fontSize:15 ,fontWeight: FontWeight.w600,)
                              ],
                            ),
                            GreyText(text:'32 minutes ago', ),
                            Divider( color: AppColors.greyColor,thickness:1),
                            Row(
                              children: [
                                BlackTextWidget(text: '4.5',fontWeight: FontWeight.w600,fontSize: 15,),
                                Icon(Icons.star,color:Color(0xffFFC107),),
                                Icon(Icons.star,color:Color(0xffFFC107),),
                                Icon(Icons.star,color:Color(0xffFFC107) ,),
                                Icon(Icons.star,color: Color(0xffFFC107),),
                                Icon(Icons.star_half_sharp,color:Color(0xffFFC107),)
                              ],
                            ),
                            BlackTextWidget(text: 'Lorem ipsum dolor sit amet, consetetur sadi sspscing \n elitr, sed diam nonumy',fontSize: 11,fontWeight:FontWeight.w400,
                              textColor: AppColors.greyColor,)
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 30,),
          ],
        ),
      )
    );
  }
}
