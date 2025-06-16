import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/grey-text.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/components/welcome_button.dart';

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
    return Stack(
      children: [
        Container(
          height: 490,
          width: 490,
          decoration: BoxDecoration(
            color: widget.containerColor,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight:
            Radius.circular(40)),
          ),
        ),
        Image(image: AssetImage(widget.image,),width:324,height: 324,),
     Spacer(),
        Column(
          children: [
            Container(
             width: 414,
              height:438 ,
              decoration: BoxDecoration(
                color: AppColors.lightGrey,
                borderRadius:BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),

              ),
              child:Column(
                children: [
                 Row(
                   children: [
                     TextButton(onPressed: (){}, child:Text('\$2.22')),
                     SizedBox(height: 30,) ,
                   ],
                 ),
                  BlackTextWidget(text:widget.text),
                  BlackTextWidget(text:widget.price),
                  GreyText(text:widget.discription),
                  Row(
                    children: [
                      Container(),
                      Container(),
                      Container(),
                    ],
                  ),

                ],
              ),
            ),
          ],
        )

      ],
    );
  }
}
