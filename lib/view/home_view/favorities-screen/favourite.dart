import 'package:flutter/material.dart';

import '../../../controller/components/grey-text.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<String> images=[
    AppIcons.broccoli,
    AppIcons.grapes,
    AppIcons.aocado,
    AppIcons.pineapple,
    AppIcons.pomegrante,
  ];
  List<String> text=[
    'Fresh Broccoli',
    'fresh Black Grapes',
    'fresh Avacada',
    'fresh Pineapple',
    'fresh Pomegrante',
  ];
  List<String> price=[
    '1.50 lbs',
    '5.0 lbs',
    '1.50 lbs',
    'dozen',
    'dozen',
  ];
  List <Color> appColor=[
    Color(0xffD2FFD0),
    AppColors.lightredcolor,
    Color(0xffFCFFD9),
    Color(0xffFFE6C2),
    AppColors.lightredcolor,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title:
            BlackTextWidget(text: 'Favorites',fontSize: 18,fontWeight: FontWeight.w500,),
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back,size: 20,color: AppColors.blackColor,)),
        centerTitle: true,
      ),
   body: SingleChildScrollView(
     child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10.0),
       child: Column(
         children:
          [
            SizedBox(height: 35,),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: text.length,
              itemBuilder: (context,index){
              return
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0,),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: appColor[index],
                            shape: BoxShape.circle,
                          ),
                          child: Image(image: AssetImage(images[index]),),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  BlackTextWidget(text: '\$2.22 x 4 ',fontSize: 12,fontWeight: FontWeight.w500,textColor: AppColors.greencolor,),
                                  Icon(Icons.add,color: AppColors.greencolor,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  BlackTextWidget(text: text[index],fontSize: 15,fontWeight: FontWeight.w600,),
                                  Text('5',style: TextStyle(color: AppColors.greencolor,fontSize: 15,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GreyText(text: price[index]),
                                  Icon(Icons.minimize,color: AppColors.greencolor,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),),
                );
            },
           )

          ]),
     ),),
    );
  }
}
