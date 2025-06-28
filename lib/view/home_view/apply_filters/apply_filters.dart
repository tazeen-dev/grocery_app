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
       Divider(thickness: 1,color: AppColors.greyColor,)

     ],
   ),
 )
        ],
      ),
    );
  }
}
