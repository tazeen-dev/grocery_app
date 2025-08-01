import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';

import '../../model/product_model/product_list_model.dart';
import '../utils/constants/appcolors/app_color.dart';
class ListItems extends StatefulWidget {
  final List<ProductList> products;
  const ListItems({super.key, required this.products});

  @override
  State<ListItems> createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 100,
      child: ListView.builder(
          itemCount: widget.products.length,
          scrollDirection: Axis.horizontal,
          itemBuilder:(context , index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>widget.products[index].screen));
                          },
                          child: Container(
                            height: 54,
                            width: 55.84882926940918,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:widget.products[index].appcolor,//AppColors.greyColor,
                              image: DecorationImage(image: AssetImage(widget.products[index].image)),
                            ),),
                        ),]),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      BlackTextWidget(text:widget.products[index].text,fontWeight: FontWeight.w500,fontSize: 10,textColor:
                      AppColors.greyColor,),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
