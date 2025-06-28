import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/textfield.dart';
import 'package:grocery_app/model/product_model/textfeild.dart';

import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
class ApplyFilters extends StatefulWidget {
  const ApplyFilters({super.key});

  @override
  State<ApplyFilters> createState() => _ApplyFiltersState();
}

class _ApplyFiltersState extends State<ApplyFilters> {
  TextEditingController minController=TextEditingController();
  TextEditingController maxcontrolller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(text: 'Apply Filters',fontWeight: FontWeight.w600,fontSize: 18,),
        centerTitle: true,
        leading: Image(image: AssetImage(AppIcons.backicon),color:
        AppColors.blackColor,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:18.0),
            child: Image(image: AssetImage('assets/icons/refresh.png')),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
 Container(
   height: 449,
   width:double.infinity,
   decoration: BoxDecoration(
     color: AppColors.whiteColor,
   ),
   child: Column(
     children: [
       BlackTextWidget(text: 'Price Range',fontSize: 15,fontWeight: FontWeight.w600,),
       Row(
         children: [
           Expanded(
             child: TextFormField(
               controller: minController,
               decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: AppColors.lightGrey),
                   borderRadius: BorderRadius.circular(5),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5),
                   borderSide: BorderSide(color: AppColors.lightGrey)
                 ),
                 hintText: 'min',
                 hintStyle: TextStyle(color: AppColors.greyColor),
                 filled: true,
                 fillColor: AppColors.lightGrey
               ),
               style: TextStyle(color: AppColors.greyColor),
             ),
           ),
           SizedBox(width: 10,),
           Expanded(
             child: TextFormField(
               controller: minController,
               decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: AppColors.lightGrey),
                     borderRadius: BorderRadius.circular(5),
                   ),
                   focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5),
                       borderSide: BorderSide(color: AppColors.lightGrey)
                   ),
                   hintText: 'Max.',
                   hintStyle: TextStyle(color: AppColors.greyColor),
                   filled: true,
                   fillColor: AppColors.lightGrey
               ),
               style: TextStyle(color: AppColors.greyColor),
             ),
           ),
         ],
       ),
       Divider(thickness: 1,color: AppColors.greyColor,),
       BlackTextWidget(text: 'Star Rating',fontSize: 15,fontWeight: FontWeight.w600,),
       Container(
         height: 45,
         width: 349,
         decoration: BoxDecoration(
           color: AppColors.lightGrey
         ),
         child: Row(
           children: [
             Icon(Icons.star,color: Color(0xffFFC107),size:20 ,),
             Icon(Icons.star,color: Color(0xffFFC107),size:20,),
             Icon(Icons.star,color: Color(0xffFFC107),size:20 ,),
             Icon(Icons.star,color: Color(0xffFFC107),size:20 ,),
             Icon(Icons.star,color: Colors.white,size:15 ,),
             Text('4stars',style: TextStyle(color: AppColors.greyColor),)
           ],
         ),
       ),
 Divider(thickness: 1,color: AppColors.greyColor,),
       BlackTextWidget(text: 'Star Rating',fontSize: 15,fontWeight: FontWeight.w600,),
       Row(
       children: [
         SizedBox(width: 10,),
        Icon(Icons.discount_outlined,color: AppColors.greyColor,),
          SizedBox(width: 10,),
          BlackTextWidget(text: 'Discount',fontSize: 12,fontWeight: FontWeight.w500,textColor:
          AppColors.greyColor,),
         SizedBox(width: 270,),
         Icon(Icons.check_circle_outline_outlined,color: AppColors.greyColor),

       ],
     ),
       SizedBox(width: 20,),
       Divider(thickness: 1,color: AppColors.greyColor,),
       Row(
         children: [
           SizedBox(width: 10,),
           Image(image: AssetImage(AppIcons.outofdeleverd)),
           SizedBox(width: 10,),
           BlackTextWidget(text: 'Free shipping',fontSize: 12,fontWeight: FontWeight.w500,textColor:
           AppColors.greyColor,),
           SizedBox(width: 220,),
           Icon(Icons.check_circle_outline_outlined,color: AppColors.DarkGreen),

         ],
       ),
       Divider(thickness: 1,color: AppColors.greyColor,),
       Row(
         children: [
           SizedBox(width: 10,),
           Image(image: AssetImage(AppIcons.order),color: AppColors.greyColor,),
           SizedBox(width: 10,),
           BlackTextWidget(text: 'Same day delivery',fontSize: 12,fontWeight: FontWeight.w500,textColor:
           AppColors.greyColor,),
           SizedBox(width: 215,),
           Icon(Icons.check_circle_outline_outlined,color: AppColors.DarkGreen),
         ],
       )
     ],
   ),
 )
        ],
      ),
    );
  }
}
