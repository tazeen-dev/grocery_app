import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/product-details.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/components/container.dart';
import 'package:grocery_app/controller/components/welcome_button.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
import 'package:grocery_app/controller/utils/constants/appimages/app_images_widget.dart';
import 'package:grocery_app/view/home_view/cart-screen/cart.dart';
import 'package:grocery_app/view/home_view/categaries_screen/categaries_screen.dart';
import 'package:grocery_app/view/home_view/favorities-screen/favourite.dart';
import 'package:grocery_app/view/home_view/featured_screen/featured_screen.dart';
import 'package:grocery_app/view/starting_view/splash_view/splash_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController=TextEditingController();

  bool is_favourite1=false;
  bool is_favourite2=false;
  bool is_favourite3=false;
  bool is_favourite4=false;
  bool is_favourite5=false;
  bool is_favourite6=false;
  String searchtext='';
  List <String> text=[
   'Vegetables',
    'Fruits',
    'Beverages',
    'Grocery',
    'Edible oil',
    'Household'
    'Babycare',
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
    AppColors.lightredcolor,
    AppColors.lightblue,
    AppColors.lightredcolor,
    AppColors.lightblue,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
        PreferredSize(preferredSize:Size.fromHeight(70),
          child:AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 20.0),
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
      ),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              Container(
                height:278,
                width: 490,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(AppImages.homeimage)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 112.0),
                  child: BlackTextWidget(text:
                  '20% off on your \n first purchase'
                    ,textalignn:TextAlign.start,fontSize: 18,fontWeight: FontWeight.w600,),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlackTextWidget(text: 'Categories',textalignn: TextAlign.start,fontWeight: FontWeight.w600,fontSize: 18,),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>CategariesScreen()));
                  }, icon:Icon(Icons.arrow_forward_ios,color: AppColors.greyColor,size: 20,),),
                ]
              ),
              SizedBox(height: 10,),
              SizedBox(height: 100,
                child: ListView.builder(
                  itemCount: text.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context , index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                              height: 54,
                              width: 55.84882926940918,
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
                  }, icon:Icon(Icons.arrow_forward_ios,size: 20,
                    color: AppColors.greyColor)),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
              Container(
                height: 250,
                  width: 150,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){
                          if(is_favourite1==true){
                            is_favourite1=false;
                          }
                          else{
                            is_favourite1=true;
                          }
                          setState(() {
                          });
                        }, icon: Icon(is_favourite1?Icons.favorite:Icons.favorite_border,color: is_favourite1?Colors.red:Colors.grey,)),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: AppColors.lightredcolor,
                          ),

                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                ProductDetails(text:
                            'peach',
                                image:AppImages.lemon, appicons: AppIcons.hearticon, discription:'Lorem ipsum dolor sit amet, consetetur\n sadipscing elitr, sed diam nonumy''\nLorem ipsum dolor sit amet, consetetur\n sadipscing elitr, sed diam nonumy',
                                price: '22', containerColor:
                                AppColors.LightGreen)));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 22.0,left: 8.0),
                              child: Image(image: AssetImage(AppIcons.peach),height: 50,),
                            )),
                      ],
                    ),
                      BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 10,textColor: AppColors.LightGreen,),
                      BlackTextWidget(text: 'Fresh Peach',fontSize: 12,fontWeight: FontWeight.w600,),
                    BlackTextWidget(text: 'dozen',fontSize: 10,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                    Divider(thickness: 1,color: AppColors.greyColor),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(image: AssetImage(AppIcons.carticon)),
                        TextButton(onPressed: (){}, child:BlackTextWidget(text: 'Add to cart',fontWeight: FontWeight.w500,fontSize: 12,))
                      ],
                    ),
                    SizedBox(height: 20,),
                ]
                    ),
              ),

                  //2 container
                  SizedBox(width: 20,),
                  Container(
                    height: 250,
                    width: 150,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                    ),
                    child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(onPressed: (){
                                if(is_favourite2==true){
                                  is_favourite2=false;
                                }
                                else{
                                  is_favourite2=true;
                                }
                                setState(() {
                                });
                              }, icon: Icon(is_favourite2?Icons.favorite:Icons.favorite_border,color:
                              is_favourite2?Colors.red:Colors.grey,size: 20,)),
                            ],
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: AppColors.lightredcolor,
                                ),
                              ),
                              InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 25.0,left: 10.0),
                                    child: Image(image: AssetImage(AppIcons.aocado),height: 40,),
                                  )),
                            ],
                          ),
                          BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 10,textColor: AppColors.LightGreen,),
                          BlackTextWidget(text: 'Pineapple',fontSize: 12,fontWeight: FontWeight.w600,),
                          BlackTextWidget(text: 'dozen',fontSize: 10,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                          Divider(thickness: 1,color: AppColors.greyColor),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(image: AssetImage(AppIcons.carticon)),
                              TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>CartScreen()));},
                                  child:BlackTextWidget(text: 'Add to cart',fontWeight: FontWeight.w500,fontSize: 12,)),
                            ],
                          ),
                        ]
                    ),
                  ),
                  ]),
              SizedBox(height: 20,),
              //3 container
              Row(
                  children: [
                    Container(
                      height: 250,
                      width: 150,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                      ),
                      child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(onPressed: (){
                                  if(is_favourite3==true){
                                    is_favourite3=false;
                                  }
                                  else{
                                    is_favourite3=true;
                                  }
                                  setState(() {
                                  });
                                }, icon: Icon(is_favourite3?Icons.favorite:Icons.favorite_border,color:
                                is_favourite3?Colors.red:Colors.grey,size: 20,)),
                              ],
                            ),
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: AppColors.lightredcolor,
                                  ),
                                ),
                                InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Image(image: AssetImage(AppIcons.pineapple),height: 60,),
                                    )),
                              ],
                            ),
                            BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 10,textColor: AppColors.LightGreen,),
                            BlackTextWidget(text: 'Fresh Peach',fontSize: 12,fontWeight: FontWeight.w600,),
                            BlackTextWidget(text: 'dozen',fontSize: 10,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                            Divider(thickness: 1,color: AppColors.greyColor),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage(AppIcons.carticon)),
                                TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>CartScreen()));},
                                    child:BlackTextWidget(text: 'Add to cart',fontWeight: FontWeight.w500,fontSize: 12,)),
                              ],
                            )


                          ]
                      ),
                    ),
                    //4
                    // container
                    SizedBox(width: 15,),
                    Container(
                      height: 250,
                      width: 150,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                      ),
                      child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(onPressed: (){
                                  if(is_favourite4==true){
                                    is_favourite4=false;
                                  }
                                  else{
                                    is_favourite4=true;
                                  }
                                  setState(() {
                                  });
                                }, icon: Icon(is_favourite4?Icons.favorite:Icons.favorite_border,color:
                                is_favourite4?Colors.red:Colors.grey,size: 20,)),
                              ],
                            ),
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: AppColors.lightredcolor,
                                  ),
                                ),
                                InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 20.0,left: 10.0),
                                      child: Image(image: AssetImage(AppIcons.grapes),height: 50,),
                                    )),
                              ],
                            ),
                            BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 10,textColor: AppColors.LightGreen,),
                            BlackTextWidget(text: 'Black Grapes',fontSize: 12,fontWeight: FontWeight.w600,),
                            BlackTextWidget(text: 'dozen',fontSize: 10,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                            Divider(thickness: 1,color: AppColors.greyColor),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage(AppIcons.carticon)),
        TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>CartScreen()));},
            child:BlackTextWidget(text: 'Add to cart',fontWeight: FontWeight.w500,fontSize: 12,)),
                              ],
                            ),
                          ]
                      ),
                    ),
                  ]),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 250,
                      width: 150,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                      ),
                      child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(onPressed: (){
                                  if (is_favourite5==true){
                                    is_favourite5=false;
                                  }
                                  else{
                                    is_favourite5=true;
                                  }
                                  setState(() {
                                  });
                                }, icon:Icon(is_favourite5?Icons.favorite:Icons.favorite_border,color:
                                is_favourite5?Colors.red:Colors.grey,size: 20,)),
                              ],
                            ),
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: AppColors.lightredcolor,
                                  ),
                                ),
                                InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 20.0,left: 5.0),
                                      child: Image(image: AssetImage(AppIcons.pomegrante),height: 50,),
                                    )),
                              ],
                            ),
                            BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 10,textColor: AppColors.LightGreen,),
                            BlackTextWidget(text: 'Fresh Peach',fontSize: 12,fontWeight: FontWeight.w600,),
                            BlackTextWidget(text: 'dozen',fontSize: 10,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
                            Divider(thickness: 1,color: AppColors.greyColor),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage(AppIcons.carticon)),
                                TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>CartScreen()));},
                                    child:BlackTextWidget(text: 'Add to cart',fontWeight: FontWeight.w500,fontSize: 12,)),
                              ],
                            ),
                          ]
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 250,
                      width: 150,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                      ),
                      child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                               IconButton(onPressed: (){
                                  if(is_favourite6==true){
                                    is_favourite6=false;
                                  }
                                  else{
                                    is_favourite6=true;
                                  }
                                  setState(() {
                                  });
                                }, icon: Icon(is_favourite6?Icons.favorite:Icons.favorite_border,color:
                                is_favourite6?Colors.red:Colors.grey,size: 20,)),
                              ],
                            ),
                            Stack(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: AppColors.LightGreen,
                                ),
                                InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SplashScreen()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 20.0,left: 5),
                                      child: Image(image: AssetImage(AppIcons.broccoli,),height: 50,),
                                    )),
                              ],
                            ),
                            BlackTextWidget(text: '\$8.00',fontWeight: FontWeight.w500,fontSize: 10,textColor: AppColors.LightGreen,),
                            BlackTextWidget(text: 'Fresh Broccoli',fontSize: 10,fontWeight: FontWeight.w600,),
                            BlackTextWidget(text: 'dozen',fontSize: 10,fontWeight: FontWeight.w500,textColor: AppColors.greyColor,),
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
              SizedBox(height: 20,),

               ] ),
        ), ));
  }
}
