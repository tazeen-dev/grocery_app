import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/favourite-product.dart';
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
    'fresh fruits',
    'fresh fruits',
    'fresh fruits',
    'fresh fruits',
    'fresh fruits',
    'fresh fruits',
    'fresh fruits',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title:
            BlackTextWidget(text: 'Favorites',fontSize: 18,fontWeight: FontWeight.w500,),
        leading: Icon(Icons.arrow_back,size: 20,),
      ),
   body: ListView.builder(

       itemBuilder: (context,index){
     return ListTile(
      leading: Stack(
        children: [
          Container(
            height: 30,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,

            ),
          ),
          Image(image: AssetImage(images[index])),
        ],
      ),
       title:Row(
         children: [
           Text(text[index]),
         ],
       ),
       subtitle:Text(text[index])
     );
   }),
    );
  }
}
