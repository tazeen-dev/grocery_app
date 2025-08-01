import 'package:flutter/material.dart';

import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
class CategariesScreen extends StatefulWidget {
  const CategariesScreen({super.key});

  @override
  State<CategariesScreen> createState() => _CategariesScreenState();
}

class _CategariesScreenState extends State<CategariesScreen> {
  List<String> text=[
    'Vegetables',
    'Fruits',
    'Beverages',
    'Grocery',
    'Edible oil',
    'Household',
    'Babycare',
  ];
  List<String> images=[
    AppIcons.vegetablesicon,
    AppIcons.fruiticon,
    AppIcons.beverageicon,
    AppIcons.groceryicon,
    AppIcons.oilicon,
    AppIcons.householdicon,
    AppIcons.babyicon,
  ];
  List <Color> appColor=[
    AppColors.LightGreen,
    AppColors.lightredcolor,
    AppColors.lightyellowcolor,
    AppColors.lightblue,
    AppColors.lightblue,
    AppColors.lightredcolor,
    AppColors.lightblue,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(text: 'Categories',fontSize: 18,
          fontWeight: FontWeight.w500,),
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: Image(image: AssetImage(AppIcons.backicon),color: AppColors.blackColor,)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Image(image: AssetImage(AppIcons.search2,),color: AppColors.blackColor,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            SizedBox(height: 500,
              child: GridView.builder(gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
              crossAxisSpacing: 10,mainAxisSpacing: 10),
                scrollDirection: Axis.vertical,
                itemCount: text.length,
                itemBuilder: (context,index) {
               return Container(
                 height: 130,
                 width: 120,
                 decoration: BoxDecoration(
                   color: AppColors.whiteColor,
                   borderRadius: BorderRadius.circular(5),
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                 Container(
                   height: 50,
                   width: 50,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: appColor[index],
                     image: DecorationImage(image: AssetImage(images[index]))
                   ),
                 ),
                   SizedBox(height: 10,),
                   Text(text[index],),
                 ],)

               );
                },
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
