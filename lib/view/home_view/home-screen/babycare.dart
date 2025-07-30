import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/grid_list.dart';
import 'package:grocery_app/model/product_model/grid_product_list.dart';

import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
class BabyCare extends StatelessWidget {
  BabyCare({super.key});
  List<GridContainer> gridProduct=[
    GridContainer(

        color:  Color(0xffFFCEC1), text: 'Fresh Peach',
        image:AppIcons.peach , price: '\$8.00', subtitle:
    'dozen', cartprice: 'Add to cart'),
    GridContainer(color: Color(0xffFCFFD9), text: 'Avacoda',
        image:AppIcons.aocado , price: '\$7.00', subtitle:
        '2.0 lbs' , cartprice: '1'),
    GridContainer(color: Color(0xffFFE6C2), text: 'Pineapple',
        image:AppIcons.pineapple , price:'\$9.90'
        , subtitle: '1.50 lbs', cartprice: 'add to cart'),
    GridContainer(color: Color(0xffFEE1ED), text: 'Black Grapes',
        image:AppIcons.grapes , price:'\$7.05' , subtitle: '5.0 lbs', cartprice: 'add to cart'),
    GridContainer(color: Color(0xffFFE3E2), text: 'Pomegranate',
        image:AppIcons.pomegrante , price:'\$2.09',
        subtitle: '1.50 lbs', cartprice:'1'),
    GridContainer(color: Color(0xffD2FFD0),
        text: 'Fresh B roccoli', image:AppIcons.broccoli ,
        price: '\$3.00', subtitle:'1 kg', cartprice:
        'Add to cart'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(text: 'Baby Care',fontWeight: FontWeight.w500,fontSize: 18,),
        centerTitle: true,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image(image: AssetImage(AppIcons.backicon),color: AppColors.blackColor,)),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            GridList(products: gridProduct),

          ],
        ),
      ),);
  }
}
