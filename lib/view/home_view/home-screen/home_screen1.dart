import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/dot-indicator.dart';
import 'package:grocery_app/controller/components/home-container.dart';
import 'package:grocery_app/controller/components/page_veiw.dart';
import 'package:grocery_app/controller/components/product_list.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
import 'package:grocery_app/model/product_model/product_list_model.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appimages/app_images_widget.dart';
import '../categaries_screen/categaries_screen.dart';
class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  List<ProductList> listproduct=[
    ProductList( AppColors.LightGreen, text: 'Vegetables', image:   AppIcons.vegetablesicon,),
    ProductList(AppColors.lightredcolor, text: 'Fruits', image:AppIcons.fruiticon),
    ProductList(AppColors.lightyellowcolor, text: 'Beverages', image:AppIcons.beverageicon),
    ProductList(AppColors.lightredcolor, text: 'Grocery', image: AppIcons.groceryicon,),
    ProductList(AppColors.lightblue, text: 'Edible oil', image: AppIcons.oilicon, ),
    ProductList(AppColors.lightredcolor, text: 'Household', image: AppIcons.householdicon,),
    ProductList(AppColors.lightblue, text: 'babycare', image:AppIcons.babyicon),
  ];
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
                    PageContainer(text: '20% off on your \n first purchase', image:AppImages.homeimage),
                    PageContainer(text: 'Fresh Groceries\n  at Your Doorstep', image:AppImages.home4, ),
                    PageContainer(text: 'Fast & On-Time\n  Delivery', image:AppImages.home5),
                  ],
                ),

                  Padding(
                    padding: const EdgeInsets.only(left: 25.0,top: 210.0),
                    child: DotIndicator(currentIndex: currentPage, itemCount: 3),
                  ),

                ]
              ),
            ),
            SizedBox(height: 10,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlackTextWidget(text: 'Categories',textalignn: TextAlign.start,fontWeight: FontWeight.w600,fontSize: 18,),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>CategariesScreen()));
                  }, icon:Icon(Icons.arrow_forward_ios,color: AppColors.greyColor,size: 20,),),
                ]
            ),
            ListItems(products:listproduct ),
          ],
        ),
      ),
    );
  }
}
