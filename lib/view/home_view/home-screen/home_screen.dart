import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/components/container.dart';
import 'package:grocery_app/controller/components/welcome_button.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
import 'package:grocery_app/view/home_view/cart-screen/cart.dart';
import 'package:grocery_app/view/home_view/categaries_screen/categaries_screen.dart';
import 'package:grocery_app/view/home_view/favorities-screen/favourite.dart';
import 'package:grocery_app/view/home_view/featured_screen/featured_screen.dart';
import 'package:grocery_app/view/home_view/product_details/peach_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController=TextEditingController();
  bool is_favourite=true;
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
    AppIcons.vegetablesicon,
    AppIcons.fruiticon,
    AppIcons.beverageicon,
    AppIcons.groceryicon,
    AppIcons.oilicon,
    AppIcons.householdicon,
    AppIcons.babyicon,
    ];
  List<Color>listColors=[
    AppColors.LightGreen,
    AppColors.lightredcolor,
    AppColors.lightyellowcolor,
    AppColors.lightpurple,
    AppColors.lightblue,
    AppColors.lightpink,
    AppColors.randomcolor,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Container(
          height: 300,
          width: double.infinity,
          child: TextField(
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
              prefixIcon: ImageIcon(AssetImage(AppIcons.search)),//Image(image: AssetImage('assets/images/search2.png')),
              suffixIcon: ImageIcon(AssetImage(AppIcons.search2)),
            ),
            style: TextStyle(color: AppColors.greyColor),
            onChanged: (value) => setState(() =>
              searchtext),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlackTextWidget(text: 'Categories',textalignn: TextAlign.start,fontWeight: FontWeight.w600,fontSize: 18,),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>CategariesScreen()));
                }, icon:Icon(Icons.arrow_forward_ios,color: AppColors.greyColor,size: 30,),),
              ]
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlackTextWidget(text: 'Featured products',textalignn: TextAlign.start,fontWeight: FontWeight.w700
                  ,fontSize: 18,),
                IconButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>FeaturedScreen()));
                }, icon:Icon(Icons.arrow_forward_ios,color: AppColors.whiteColor,)),
              ],
            ),
            SizedBox(height: 20,),
            Row(
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
                        IconButton(onPressed: (){
                          if(is_favourite==false){
                            is_favourite=true;
                          }
                          else{
                            is_favourite=false;
                          }
                          setState(() {
                          });
                        }, icon: Icon(is_favourite?Icons.favorite:Icons.favorite_border,color:
                        is_favourite?AppColors.greyColor:AppColors.lightredcolor,)),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColors.lightredcolor,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PeachScreen()));
                        },
                          child: Image(image: AssetImage(AppIcons.peach))),
                    ],
                  ),
                    BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 12,textColor: AppColors.LightGreen,),
                    BlackTextWidget(text: 'Fresh Peach',fontSize: 15,fontWeight: FontWeight.w600,),
                  BlackTextWidget(text: 'dozen',fontSize: 12,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                  Divider(thickness: 1,color: AppColors.greyColor),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(image: AssetImage(AppIcons.carticon)),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
                      }, icon: BlackTextWidget(text: 'Add to cart',fontSize: 12,fontWeight: FontWeight.w500,),)
                    ],
                  ),
              ]
                  ),
            ),

                //2 container
                SizedBox(width: 20,),
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
                              IconButton(onPressed: (){
                                if(is_favourite==false){
                                  is_favourite=true;
                                }
                                else{
                                  is_favourite=false;
                                }
                                setState(() {
                                });
                              }, icon: Icon(is_favourite?Icons.favorite:Icons.favorite_border,color:
                              is_favourite?AppColors.greyColor:AppColors.lightredcolor,)),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: AppColors.lightredcolor,
                            ),
                            InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PeachScreen()));
                                },
                                child: Image(image: AssetImage(AppIcons.pineapple))),
                          ],
                        ),
                        BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 12,textColor: AppColors.LightGreen,),
                        BlackTextWidget(text: 'Fresh Pineapple',fontSize: 15,fontWeight: FontWeight.w600,),
                        BlackTextWidget(text: 'dozen',fontSize: 12,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                        Divider(thickness: 1,color: AppColors.greyColor),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(image: AssetImage(AppIcons.carticon)),
                            BlackTextWidget(text: 'Add to cart',fontSize: 12,fontWeight: FontWeight.w500,),
                          ],
                        ),
                      ]
                  ),
                ),
                ]),
            SizedBox(height: 20,),
            //3 container
            Row(
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
                                IconButton(onPressed: (){
                                  if(is_favourite==false){
                                    is_favourite=true;
                                  }
                                  else{
                                    is_favourite=false;
                                  }
                                  setState(() {
                                  });
                                }, icon: Icon(is_favourite?Icons.favorite:Icons.favorite_border,color:
                                is_favourite?AppColors.greyColor:AppColors.lightredcolor,)),
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
                  //4 container
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
                                IconButton(onPressed: (){
                                  if(is_favourite==false){
                                    is_favourite=true;
                                  }
                                  else{
                                    is_favourite=false;
                                  }
                                  setState(() {
                                  });
                                }, icon: Icon(is_favourite?Icons.favorite:Icons.favorite_border,color:
                                is_favourite?AppColors.greyColor:AppColors.lightredcolor,)),
                              ],
                            ),
                          ),
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: AppColors.lightredcolor,
                              ),
                              InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PeachScreen()));
                                  },
                                  child: Image(image: AssetImage(AppIcons.peach))),
                            ],
                          ),
                          BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 12,textColor: AppColors.LightGreen,),
                          BlackTextWidget(text: 'Fresh Peach',fontSize: 15,fontWeight: FontWeight.w600,),
                          BlackTextWidget(text: 'dozen',fontSize: 12,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                          Divider(thickness: 1,color: AppColors.greyColor),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(image: AssetImage(AppIcons.carticon)),
                              BlackTextWidget(text: 'Add to cart',fontSize: 12,fontWeight: FontWeight.w500,),
                            ],
                          ),
                        ]
                    ),
                  ),
                ]),
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
                                  IconButton(onPressed: (){
                                    if (is_favourite==false){
                                      is_favourite=true;
                                    }
                                    else{
                                      is_favourite=false;
                                    }
                                    setState(() {
                                    });
                                  }, icon:Icon(is_favourite?Icons.favorite_border:Icons.favorite,color:
                                  is_favourite?AppColors.greyColor:AppColors.lightredcolor,)),
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: AppColors.lightredcolor,
                                ),
                                InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PeachScreen()));
                                    },
                                    child: Image(image: AssetImage(AppIcons.peach))),
                              ],
                            ),
                            BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 12,textColor: AppColors.LightGreen,),
                            BlackTextWidget(text: 'Fresh Peach',fontSize: 15,fontWeight: FontWeight.w600,),
                            BlackTextWidget(text: 'dozen',fontSize: 12,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                            Divider(thickness: 1,color: AppColors.greyColor),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage(AppIcons.carticon)),
                                BlackTextWidget(text: 'Add to cart',fontSize: 12,fontWeight: FontWeight.w500,),
                              ],
                            ),
                          ]
                      ),
                    ),
                    SizedBox(width: 30,),
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
                                 IconButton(onPressed: (){
                                    if(is_favourite==false){
                                      is_favourite=true;
                                    }
                                    else{
                                      is_favourite=false;
                                    }
                                    setState(() {
                                    });
                                  }, icon: Icon(is_favourite?Icons.favorite:Icons.favorite_border,color:
                                  is_favourite?AppColors.greyColor:AppColors.lightredcolor,)),
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: AppColors.lightredcolor,
                                ),
                                InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PeachScreen()));
                                    },
                                    child: Image(image: AssetImage(AppIcons.peach))),
                              ],
                            ),
                            BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 12,textColor: AppColors.LightGreen,),
                            BlackTextWidget(text: 'Fresh Peach',fontSize: 15,fontWeight: FontWeight.w600,),
                            BlackTextWidget(text: 'dozen',fontSize: 12,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                            Divider(thickness: 1,color: AppColors.greyColor),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage(AppIcons.carticon)),
                                TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
                                }, child: BlackTextWidget(text: 'Add to cart',fontSize:12 ,fontWeight: FontWeight.w500,)),
                              ],
                            ),
                          ]
                      ),
                    ),
                  ]),
            ),
            SizedBox(height: 10,),

     ] ), ));
  }
}
