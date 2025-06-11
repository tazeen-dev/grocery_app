import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/black_text_widget.dart';
import 'package:grocery_app/controller/components/container.dart';
import 'package:grocery_app/controller/components/welcome_button.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/view/home_view/favorities-screen/favourite.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController=TextEditingController();
  String searchtext='';
  List <String> text=[
   'Vegetables',
    'Fruits',
    'Beverages',
    'Grocery',
    'Edible oil',
    'Household'
  ];
  List <String> images=[
    'assets/images/pic2.png',
    'assets/images/Group (1).png',
    'assets/images/Group (1).png',
    'assets/images/Group (1).png',
    'assets/images/Group (1).png',
    'assets/images/Group (1).png',
    ];
  List<Color>listColors=[
    Color(0xffE6F2EA),
    Color(0xffFFE9E5),
    Color(0xffFFF6E3),
    Color(0xffE6F2EA),
    Color(0xffE6F2EA),
    Color(0xffE6F2EA),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: searchController,
          keyboardType: TextInputType.text,
          decoration:InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: AppColors.whiteColor)
            ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.lightGrey),
              ),
              filled: true,
              fillColor: AppColors.lightGrey,
              hintText: 'Search keywords..',
            hintStyle:TextStyle(color:AppColors.greyColor),
            prefixIcon: ImageIcon(AssetImage('assets/images/icon.png')),//Image(image: AssetImage('assets/images/icon.png')),
            suffixIcon: Icon(Icons.compare_arrows_rounded,color: AppColors.greyColor,)
          ),
          style: TextStyle(color: AppColors.greyColor),
          onChanged: (value) => setState(() =>
            searchtext),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height:327 ,
              width: 490,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/homepic1.png')),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 75.0,top: 190),
                child: BlackTextWidget(text: '20% off on your \n first purchase'
                  ,textalignn:TextAlign.start,fontSize: 18,fontWeight: FontWeight.w600,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlackTextWidget(text: 'Categories',textalignn: TextAlign.start,fontWeight: FontWeight.w600,fontSize: 18,),
                  Icon(Icons.arrow_forward_ios,color: AppColors.greyColor,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(height: 100,
              child: ListView.builder(
                itemCount: text.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context , index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      children: [
                        Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // CircleAvatar(
                            //   child: Image.asset(''),
                            // )
                            Container(
                            height: 50.4,
                            width: 50.84882926940918,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: listColors[index],//AppColors.greyColor,
                              image: DecorationImage(image: AssetImage(images[index])),
                            ),),]),
                             SizedBox(height: 10,),
                             Row(
                                children: [
                                  BlackTextWidget(text:text[index],fontWeight: FontWeight.w500,fontSize: 10,textColor:
                                  AppColors.greyColor,),
                                ],
                               ),
                      ],
                    ),
                  );
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlackTextWidget(text: 'Featured products',textalignn: TextAlign.start,fontWeight: FontWeight.w700
                    ,fontSize: 18,),
                  Icon(Icons.arrow_forward_ios,color: AppColors.greyColor,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Container(
                height: 234,
                  width: 181,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset('assets/images/Vector (3).png'),
                        ],
                      ),
                    ),
                    Image.asset('assets/images/peach.png',),
                      BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 12,textColor: AppColors.LightGreen,),
                      BlackTextWidget(text: 'Fresh Peach',fontSize: 15,fontWeight: FontWeight.w600,),
                    BlackTextWidget(text: 'dozen',fontSize: 12,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                    Divider(thickness: 1,color: AppColors.greyColor),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(image: AssetImage('assets/images/Vector (2).png')),
                        BlackTextWidget(text: 'Add to cart',fontSize: 12,fontWeight: FontWeight.w500,),
                      ],
                    ),
                ]
                    ),
              ),
                  Container(
                    height: 234,
                    width: 181,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                    ),
                    child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset('assets/images/Vector (3).png'),
                              ],
                            ),
                          ),
                          BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 12,textColor: AppColors.LightGreen,),
                          BlackTextWidget(text: 'Fresh Peach',fontSize: 15,fontWeight: FontWeight.w600,),
                          BlackTextWidget(text: 'dozen',fontSize: 12,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                          Divider(thickness: 1,color: AppColors.greyColor),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(image: AssetImage('assets/images/Vector (2).png')),
                              BlackTextWidget(text: 'Add to cart',fontSize: 12,fontWeight: FontWeight.w500,),
                            ],
                          ),
                        ]
                    ),
                  ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 234,
                      width: 181,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                      ),
                      child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset('assets/images/Vector (3).png'),
                                ],
                              ),
                            ),
                            BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 12,textColor: AppColors.LightGreen,),
                            BlackTextWidget(text: 'Fresh Peach',fontSize: 15,fontWeight: FontWeight.w600,),
                            BlackTextWidget(text: 'dozen',fontSize: 12,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                            Divider(thickness: 1,color: AppColors.greyColor),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage('assets/images/Vector (2).png')),
                                BlackTextWidget(text: 'Add to cart',fontSize: 12,fontWeight: FontWeight.w500,),
                              ],
                            ),
                          ]
                      ),
                    ),
                    Container(
                      height: 234,
                      width: 181,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                      ),
                      child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset('assets/images/Vector (3).png'),
                                ],
                              ),
                            ),
                            BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 12,textColor: AppColors.LightGreen,),
                            BlackTextWidget(text: 'Fresh Peach',fontSize: 15,fontWeight: FontWeight.w600,),
                            BlackTextWidget(text: 'dozen',fontSize: 12,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                            Divider(thickness: 1,color: AppColors.greyColor),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage('assets/images/Vector (2).png')),
                                BlackTextWidget(text: 'Add to cart',fontSize: 12,fontWeight: FontWeight.w500,),
                              ],
                            ),
                          ]
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 234,
                      width: 181,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                      ),
                      child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset('assets/images/Vector (3).png'),
                                ],
                              ),
                            ),
                            BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 12,textColor: AppColors.LightGreen,),
                            BlackTextWidget(text: 'Fresh Peach',fontSize: 15,fontWeight: FontWeight.w600,),
                            BlackTextWidget(text: 'dozen',fontSize: 12,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                            Divider(thickness: 1,color: AppColors.greyColor),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage('assets/images/Vector (2).png')),
                                BlackTextWidget(text: 'Add to cart',fontSize: 12,fontWeight: FontWeight.w500,),
                              ],
                            ),
                          ]
                      ),
                    ),
                    Container(
                      height: 234,
                      width: 181,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                      ),
                      child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset('assets/images/Vector (3).png'),
                                ],
                              ),
                            ),
                            BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 12,textColor: AppColors.LightGreen,),
                            BlackTextWidget(text: 'Fresh Peach',fontSize: 15,fontWeight: FontWeight.w600,),
                            BlackTextWidget(text: 'dozen',fontSize: 12,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                            Divider(thickness: 1,color: AppColors.greyColor),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage('assets/images/Vector (2).png')),
                                BlackTextWidget(text: 'Add to cart',fontSize: 12,fontWeight: FontWeight.w500,),
                              ],
                            ),
                          ]
                      ),
                    ),
                  ]),
            ),
            SizedBox(height: 30,),
            Container(
              color: AppColors.whiteColor,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home_filled,color: AppColors.greyColor,size: 30,),
                  Icon(Icons.person,color: AppColors.greyColor,size: 30,),
                  Icon(Icons.favorite_border,color: AppColors.greyColor,size: 30,),
                ],
              ),
            )


     ] ), ));
  }
}
