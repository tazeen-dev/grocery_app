import 'package:flutter/material.dart';

import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({super.key});

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  List<String> text=[
    'Master Card',
    'Master Card',
    'Paypal',
    'Paypal',
    'Master Card',
    'Master Card',

  ];
  List <String> images=[
    AppIcons.circle,
    AppIcons.visa,
    AppIcons.papal,
    AppIcons.papal,
    AppIcons.circle,
    AppIcons.visa,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    backgroundColor: AppColors.whiteColor,
      title: BlackTextWidget(text: 'Transactions',fontWeight: FontWeight.w500,fontSize: 18,),
      centerTitle: true,
      leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Image(image: AssetImage(AppIcons.backicon),color: AppColors.blackColor,)),
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            SizedBox(height: 750,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: text.length,
                  itemBuilder:
                      (context,index) {
                    return
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Container(
                          height:100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF5F5F5),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image(image: AssetImage(images[index]),),
                                    ),
                                    SizedBox(width: 12),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          BlackTextWidget(text:text[index],fontSize: 18,fontWeight: FontWeight.w600,),
                                          Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text('Dec 12 2021 at 10:00 pm',
                                                    style: TextStyle(fontWeight:FontWeight.w400,fontSize: 12)),
                                                BlackTextWidget(text: '\$89',fontWeight: FontWeight.w600,fontSize: 15,textColor: AppColors.greencolor,)
                                              ]),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                  }
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
