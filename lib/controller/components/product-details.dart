import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/components/welcome_button.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
import 'package:grocery_app/view/home_view/cart-screen/cart.dart';

import '../utils/constants/appcolors/app_color.dart';
class ProductDetails extends StatefulWidget {
  final String text;
  final String image;
  final String appicons;
  final String discription;
  final Color containerColor;
  final String price;
  const ProductDetails({super.key,
    required this.text, required this.image,
    required this.appicons, required this.discription,
    required this.price, required this.containerColor,});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int count=0;
  double per_price=0;
  void initState(){
    super.initState();
    per_price=double.parse(widget.price);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
               height: 350,
               width: double.infinity,
               decoration: BoxDecoration(
                 color: widget.containerColor,
                 borderRadius: BorderRadius.only(bottomRight: Radius.circular(155),bottomLeft: Radius.circular(155)),
               ),
             ),
      // ✅ Use Positioned to control exact placement
      Positioned(
        top: 100, // adjust this value to move image vertically
        left: 50, // adjust this to move image horizontally
        child: Image.asset(
          widget.image,
          width: 380,
          height: 380,    // // // ✅ Height works here!
        ),)]
          ),
          Spacer(),
          Container(
           // height: 358,
            width: 438,
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
            ),
            child:
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BlackTextWidget(text: '\$${per_price}',textColor:AppColors.greencolor,fontWeight: FontWeight.w500,fontSize: 18,),
                      Image(image: AssetImage(widget.appicons,),height: 20,),
                    ],
                  ),
                  BlackTextWidget(text:
                  widget.text,fontSize: 18,textColor:AppColors.greencolor,fontWeight: FontWeight.w300,),
                  BlackTextWidget(text: widget.discription,
                    fontWeight: FontWeight.w300,fontSize: 12,textColor: AppColors.greyColor,),
                  Row(
                    children: [
                      BlackTextWidget(text: '4.5',
                        fontWeight: FontWeight.w500,fontSize: 15,),
                      Icon(Icons.star,color: Color(0xffFFC107),size:20 ,),
                      Icon(Icons.star,color: Color(0xffFFC107),size:20,),
                      Icon(Icons.star,color: Color(0xffFFC107),size:20 ,),
                      Icon(Icons.star,color: Color(0xffFFC107),size:20 ,),
                      Icon(Icons.star_half_sharp,color: Color(0xffFFC107),size:15 ,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GreyText(text: 'Quantity'),
                        Spacer(),
                        IconButton(onPressed: (){
                                           if(count>1){
                                             count--;
                                             per_price=per_price - double.parse(widget.price);
                                             setState(() {
                                             });
                                           }
                              } ,icon:Icon(Icons.minimize,color: AppColors.greencolor,),),
                          Container(
                            width: 1,
                            height: 50,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          TextButton(onPressed: (){}, child: Text('$count')),
                        Container(
                          width: 1,
                          height: 50,
                          color: Colors.grey,
                        ),
                        IconButton(onPressed: (){
                          count++;
                          per_price=per_price+double.parse(widget.price);
                          setState(() {
                          });
                        }, icon:Icon(Icons.add,color: AppColors.greencolor,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  GreenTextButton(text: 'Add to cart', ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
                  }),
                  SizedBox(height: 40,)


                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
