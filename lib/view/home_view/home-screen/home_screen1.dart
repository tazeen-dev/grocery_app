import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/dot-indicator.dart';
import 'package:grocery_app/controller/components/grid_list.dart';
import 'package:grocery_app/controller/components/home-container.dart';
import 'package:grocery_app/controller/components/page_veiw.dart';
import 'package:grocery_app/controller/components/product_list.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
import 'package:grocery_app/model/product_model/grid_product_list.dart';
import 'package:grocery_app/model/product_model/product_list_model.dart';
import 'package:grocery_app/view/home_view/home-screen/fruits_screen.dart';
import 'package:grocery_app/view/home_view/home-screen/vegitable_screen.dart';
import 'package:grocery_app/view/home_view/search_screen/search_screen.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appimages/app_images_widget.dart';
import '../categaries_screen/categaries_screen.dart';
import '../featured_screen/featured_screen.dart';
class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}
class _HomeScreen1State extends State<HomeScreen1> {
  List<ProductList> listproduct=[
    ProductList( appcolor:  AppColors.LightGreen, text: 'Vegetables', image:   AppIcons.vegetablesicon,VegitableScreen()),
    ProductList(appcolor:AppColors.lightredcolor, text: 'Fruits', image:AppIcons.fruiticon,FruitsScreen()),
    ProductList(appcolor:AppColors.lightyellowcolor, text: 'Beverages', image:AppIcons.beverageicon,VegitableScreen()),
    ProductList(appcolor:AppColors.lightredcolor, text: 'Grocery', image: AppIcons.groceryicon,FruitsScreen()),
    ProductList(appcolor:AppColors.lightblue, text: 'Edible oil', image: AppIcons.oilicon,VegitableScreen() ),
    ProductList(appcolor:AppColors.lightredcolor, text: 'Household', image: AppIcons.householdicon,FruitsScreen()),
    ProductList(appcolor:AppColors.lightblue, text: 'babycare', image:AppIcons.babyicon,VegitableScreen()),
  ];
  List<GridContainer> gridProduct=[
    GridContainer(
      isNew: false,

        Color(0xffFFCEC1), text: 'Fresh Peach', image:AppIcons.peach , price: '\$8.00', subtitle:
        'dozen', cartprice: 'Add to cart' ),
    GridContainer(
        isNew: true,
        Color(0xffFCFFD9), text: 'Avacoda',
        image:AppIcons.aocado , price: '\$7.00', subtitle:
    '2.0 lbs' , cartprice: '1'),
    GridContainer(
        isNew: false,
        isDisount: true,
        discountValue: '-17%',
        Color(0xffFFE6C2), text: 'Pineapple',
        image:AppIcons.pineapple , price:'\$9.90'
             , subtitle: '1.50 lbs', cartprice: 'add to cart'),
    GridContainer(
        isNew: false,
        isDisount: true,
        discountValue: '-1%',
        Color(0xffFEE1ED), text: 'Black Grapes',
        image:AppIcons.grapes , price:'\$7.05' , subtitle: '5.0 lbs', cartprice: 'add to cart'),
    GridContainer(
        isNew: true,
        Color(0xffFFE3E2), text: 'Pomegranate',
        image:AppIcons.pomegrante , price:'\$2.09',
        subtitle: '1.50 lbs', cartprice:'1'),
    GridContainer(
        isNew: false,
        Color(0xffD2FFD0),
        text: 'Fresh B roccoli', image:AppIcons.broccoli ,
        price: '\$3.00', subtitle:'1 kg', cartprice:
        'Add to cart'),
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
      appBar: AppBar(
        title: GestureDetector( onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SearchScreen()),
          );
        },
          child:AbsorbPointer(
          child: Container(
                  width: 300,
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
                      suffixIcon: Image(image: AssetImage(AppIcons.search2))),
                    style: TextStyle(color:AppColors.greyColor),
                  ),
                ),
        ),
      ),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                      PageContainer(text: '20% off on your\nfirst purchase', image:AppImages.homeimage),
                      PageContainer(text: 'Fresh Groceries\n  at Your Doorstep', image:AppImages.home4, ),
                      PageContainer(text: 'Fast & On-Time\n  Delivery', image:AppImages.home5),
                    ],
                  ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 210.0),
                      child: DotIndicator(currentIndex: currentPage, itemCount: 3),
                    ),]
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlackTextWidget(text: 'Featured products',textalignn: TextAlign.start,fontWeight: FontWeight.w700
                    ,fontSize: 18,),
                  IconButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>FeaturedScreen()));
                  }, icon:Icon(Icons.arrow_forward_ios,size: 20,
                      color: AppColors.greyColor)),
                ],
              ),
              SizedBox(height: 10,),
              GridList(products: gridProduct),
            ],
          ),
        ),
      ),
    );
  }
}
