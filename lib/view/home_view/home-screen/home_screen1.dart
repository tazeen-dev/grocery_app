import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/dot-indicator.dart';
import 'package:grocery_app/controller/components/home-container.dart';
import 'package:grocery_app/controller/components/page_veiw.dart';
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
  PageController imageController=PageController();
  int currentPage=1;
  void nextPage(){
    if(currentPage<3){
      imageController.animateToPage(currentPage++, duration: Duration(milliseconds: 100), curve: Curves.bounceOut);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: searchController,
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
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(image: AssetImage(AppIcons.search)),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(image: AssetImage(AppIcons.search2)),
              )
            ),
            style: TextStyle(color: AppColors.greyColor),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            SizedBox(height: 250,
              child: Stack(
                children:[ PageView(
                  controller: imageController,
                  onPageChanged: (index){
                    setState(() {
                      currentPage=index;
                    });
                  },
                  children: [
                    PageContainer(text: 'Get 20% Off', image:AppImages.homeimage),
                    PageContainer(text: 'Get Fresh Food', image:AppIcons.pineapple ),
                    PageContainer(text: 'Get 20% Off', image:AppImages.homeimage),
                  ],
                ),

                  Padding(
                    padding: const EdgeInsets.only(left: 25.0,top: 210.0),
                    child: DotIndicator(currentIndex: currentPage, itemCount: 3),
                  )
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
