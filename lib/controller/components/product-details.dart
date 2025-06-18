import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/components/welcome_button.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(

        children: [
          Stack(
            children: [
              SizedBox(height: 400,),
             Container(
               height: 250,
               width: double.infinity,
               decoration: BoxDecoration(
                 color: widget.containerColor,
                 borderRadius: BorderRadius.only(bottomRight: Radius.circular(150),bottomLeft: Radius.circular(150)),
               ),
             ),
              Padding(
                padding: const EdgeInsets.only(top: 120.0,left: 70.0),
                child: Image(image: AssetImage(widget.image),height: 210,),
              ),],
          ),
          Spacer(),
          Container(
            height: 358,
            width: 438,
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
            ),
            child:
            Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlackTextWidget(text: widget.price,fontWeight: FontWeight.w300,fontSize: 12,),
                    Image(image: AssetImage(widget.appicons)),
                  ],
                ),
                BlackTextWidget(text: widget.text,fontSize: 18,fontWeight: FontWeight.w300,),
                BlackTextWidget(text: widget.discription,fontWeight: FontWeight.w300,fontSize: 12,textColor: AppColors.greyColor,),

              ],
            ),
          )
        ],
      ),
    );
  }
}
