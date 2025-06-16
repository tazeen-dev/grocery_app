import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
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
    AppColors.lightpurple,
    AppColors.lightblue,
    AppColors.lightpink,
    AppColors.randomcolor2,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(text: 'Categories',fontSize: 18,
          fontWeight: FontWeight.w500,),
        leading: InkWell(
          onTap: (){
          },
            child: Image(image: AssetImage(AppIcons.backicon))),
        actions: [
          Image(image: AssetImage(AppIcons.search2)),
        ],
      ),
      body: Container(
        height: 15,
        width: 49,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: GridView.builder(gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:text.length ),itemBuilder: (context,index) {
          return Column(
          children: [
            CircleAvatar(
          backgroundColor: appColor[index],
    backgroundImage:AssetImage(images[index]),
          ),
    BlackTextWidget(text: text[index]),
          ],
          );
    },
      ),
      ),
    );
  }
}
