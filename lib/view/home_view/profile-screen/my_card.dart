import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/textfield.dart';

import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
import 'address_screen.dart';
class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  TextEditingController userController=TextEditingController();
  TextEditingController cardController=TextEditingController();
  TextEditingController dateController=TextEditingController();
  TextEditingController cvvController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(text: 'Add Credit Card',fontWeight: FontWeight.w500,fontSize: 18,),
        centerTitle: true,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image(image: AssetImage(AppIcons.backicon),color: AppColors.blackColor,)),),
      body: Column(
        children: [
Container(
  height:189 ,
  width: double.infinity,
  decoration: BoxDecoration(
    gradient: LinearGradient(colors: [AppColors.DarkGreen,AppColors.LightGreen])
  ),
  child: Stack(
    children: [
     Padding(
       padding: const EdgeInsets.only(top: 20.0,left: 20.0),
       child: CircleAvatar(
         backgroundColor: Color(0xffF14336),
       ),
     ),
           Padding(
             padding: const EdgeInsets.only(left: 50.0,top: 20),
             child: CircleAvatar(
               backgroundColor: Color(0xffFFC107),
             ),
           ),
     Positioned(
       bottom: 0,
         right: 0,
         child: Container(
       height: 50,
       width: 50,
       decoration: BoxDecoration(
         color: Color(0xff6CC51D),
         borderRadius: BorderRadius.only(topLeft: Radius.circular(50),)
       ),
     )
     ),
      Padding(
        padding: const EdgeInsets.only(top: 78.0),
        child: Row(
          children: [
            SizedBox(width: 30,),
            Text('XXXX',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: AppColors.whiteColor),),
            SizedBox(width: 10,),
            Text('XXXX',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: AppColors.whiteColor),),
            SizedBox(width: 10,),
            Text('XXXX',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: AppColors.whiteColor),),
            SizedBox(width: 10,),
            Text('8790',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: AppColors.whiteColor),),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 148.0),
        child: Row(
          children: [
            Text('Card holder',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: AppColors.whiteColor),),
            SizedBox(width: 50,),
            Text('Expires',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: AppColors.whiteColor),),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 125.0),
        child: Row(
          children: [
            Text('XXXX',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: AppColors.whiteColor),),
            Text('XXXX',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: AppColors.whiteColor),),
          ],
        ),

      ),
   ] ),
) ,
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 8.0),
  child: TextFeildWidget(hintext: 'Name on the card', prefixIcons:Icons.person_outline_sharp, controller: userController,
      color: AppColors.whiteColor),
),
          TextFeildWidget(hintext: 'Name on the card', prefixIcons:Icons.person_outline_sharp, controller: cardController,
              color: AppColors.whiteColor),
          Row(
            children: [
              Expanded(
                child: TextFeildWidget(hintext: 'Name on the card', prefixIcons:Icons.person_outline_sharp, controller: dateController,
                    color: AppColors.whiteColor),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: TextFeildWidget(hintext: 'Name on the card', prefixIcons:Icons.person_outline_sharp, controller: cvvController,
                    color: AppColors.whiteColor),
              ),
            ],
          ),


        ],

      ),
    );
  }
}
