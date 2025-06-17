import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/home-container.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
import '../../../controller/utils/constants/appimages/app_images_widget.dart';
class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  TextEditingController searchController=TextEditingController();
  String searchproduct='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Container(
          height: 50,
          width: 380,
          child: TextFormField(
               controller:  searchController,
            keyboardType: TextInputType.text,
            decoration:InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(width: 1,color: AppColors.whiteColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1,color: AppColors.whiteColor),
                borderRadius: BorderRadius.circular(5),
              ),
              fillColor: AppColors.lightGrey,
              filled: true,
              hintText: 'Search keywords..',
              hintStyle: TextStyle(color: AppColors.greyColor),
              prefixIcon: Image(image: AssetImage(AppIcons.search)),
              suffixIcon: Image(image: AssetImage(AppIcons.search2))
            ),
            style: TextStyle(color: AppColors.greyColor),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PageView(
              children: [
                HomeContainer(text: '20% off on your \n first purchase', images: AppImages.homeimage),
              ],
            ),
        
          ],
        ),
      ),
    );
  }
}
