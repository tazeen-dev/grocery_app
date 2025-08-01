import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
import 'package:grocery_app/view/home_view/profile-screen/profile-screen.dart';
class OrderSucess extends StatefulWidget {
  const OrderSucess({super.key});

  @override
  State<OrderSucess> createState() => _OrderSucessState();
}

class _OrderSucessState extends State<OrderSucess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          title: BlackTextWidget(
            text: 'Order Success',
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image(
              image: AssetImage(AppIcons.backicon),
              color: AppColors.blackColor,
            ),
          ),
        ),
      body: SingleChildScrollView(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 150,),
            Center(child: Image.asset('assets/icons/Vector (14).png')),
            SizedBox(height: 10,),
            BlackTextWidget(text: 'Your order was \n succesfull !'),
            BlackTextWidget(text: 'You will get a response within \n a few minutes.',fontWeight: FontWeight.w300,fontSize: 14,
              textColor: AppColors.greyColor,textalignn: TextAlign.center,),
            SizedBox(height: 200,),
            GreenTextButton(text: 'track Order', ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
            }),
            ]),
      )
    );
  }
}
