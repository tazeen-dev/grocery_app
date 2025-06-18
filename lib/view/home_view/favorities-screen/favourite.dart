import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<String> images=[
    AppIcons.peach,
    AppIcons.pineapple,
    AppIcons.grapes,
    AppIcons.aocado,
    AppIcons.pomegrante,
  ];
  List<String> text=[
    'fresh fruits',
    'fresh Broccoli',
    'fresh Black Grapes',
    'fresh Avacado',
    'fresh Pomegrante',
  ];
  List<String> price=[
    '',
    'fresh Broccoli',
    'fresh Black Grapes',
    'fresh Avacado',
    'fresh Pomegrante',
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
   body: Column(
     children:
     [
       SizedBox(height: 20,),
       SizedBox(height: 500,
       child: ListView.builder(
         itemCount: text.length,
           scrollDirection: Axis.vertical,
           itemBuilder: (context,index){
         return Padding(
           padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 18.0),
           child: Container(
             height: 100,
             decoration: BoxDecoration(color: AppColors.whiteColor),
             child: ListTile(
              leading: Padding(
               padding: const EdgeInsets.only(left: 25.0,top: 3.0),
              child: Image(image: AssetImage(images[index],)),
                               ),
               title:Row(
                 children: [
                   Text(text[index]),
                 ],
               ),
               subtitle:Text(text[index]),
             ),
           ),
         );
       }),
     ),]
   ),
    );
  }
}
