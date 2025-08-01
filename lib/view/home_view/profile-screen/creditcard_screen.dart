import 'package:flutter/material.dart';

import '../../../controller/components/green_text_button.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/components/textfield.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
import 'my_card.dart';
class CreditcardScreen extends StatefulWidget {
  const CreditcardScreen({super.key});

  @override
  State<CreditcardScreen> createState() => _CreditcardScreenState();
}

class _CreditcardScreenState extends State<CreditcardScreen> {
  TextEditingController nameController=TextEditingController();
  TextEditingController addressController=TextEditingController();
  TextEditingController dateController=TextEditingController();
  TextEditingController codeController=TextEditingController();
  bool saveThisAddress=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(text: 'My Cards',fontWeight: FontWeight.w500,fontSize: 18,),
        centerTitle: true,
        leading: InkWell(
            onTap: (){
            },
            child: Image(image: AssetImage(AppIcons.backicon),color: AppColors.blackColor,)),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCard()));
          }, icon:Icon(Icons.add_circle_outline,size: 18,color: AppColors.blackColor,)),
        ],
      ),
      body:SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
                children: [
                  SizedBox(height: 40,),
                  Container(
                    height:400,
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
                                  child: Image(image: AssetImage(AppIcons.circle,),),
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      BlackTextWidget(text: 'Master Card',fontSize: 18,fontWeight: FontWeight.w600,),
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("XXXX  XXXX  XXXX  5678",
                                                style: TextStyle(color: Colors.grey,fontWeight:FontWeight.w400,fontSize: 10)),
                                            Icon(Icons.expand_circle_down_outlined,color: AppColors.greencolor,),
                                          ]),
                                      Row(
                                        children: [
                                          Text('Expiry : 01/22'),
                                          SizedBox(width: 30,),
                                          Text('CVV : 908')
                                        ],
                                       ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(thickness: 1,color:   AppColors.greyColor,),
                          SizedBox(height: 30,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: TextFeildWidget(hintext: 'Russell Austin', prefixIcons:Icons.account_circle_outlined, controller: nameController, color:
                            Color(0xffF4F5F9)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: TextFeildWidget(hintext: 'XXXX  XXXX  XXXX  5678', prefixIcons:Icons.margin, controller: addressController, color: Color(0xffF4F5F9)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFeildWidget(hintext: '01/22', prefixIcons: Icons.date_range_outlined, controller: dateController,
                                      color: AppColors.lightGrey),
                                ),

                            SizedBox(width: 10,),
                                Expanded(
                                  child: TextFeildWidget(hintext: '908', prefixIcons: Icons.lock_outline, controller:
                                  codeController,
                                      color: AppColors.lightGrey),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: BlackTextWidget(
                                  text: 'Save this address',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Transform.scale(
                                scale: 0.8, // adjust size (e.g., 0.8 = 80%)
                                child: Switch(
                                  value: saveThisAddress,
                                  activeColor: AppColors.greencolor,           // thumb when active
                                  activeTrackColor: AppColors.greencolor.withOpacity(0.5), // track when active
                                  inactiveThumbColor: AppColors.greyColor,    // thumb when inactive
                                  inactiveTrackColor: Colors.grey.shade300,    // track when inactive
                                  onChanged: (val) {
                                    setState(() {
                                      saveThisAddress = val;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ]
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height:110,
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
                                child: Image(image: AssetImage(AppIcons.visa,),),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BlackTextWidget(text: 'Visa Card',fontSize: 18,fontWeight: FontWeight.w600,),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("XXXX  XXXX  XXXX  5678",
                                              style: TextStyle(color: Colors.grey,fontWeight:FontWeight.w400,fontSize: 10)),
                                          Icon(Icons.expand_circle_down_outlined,color: AppColors.greencolor,),
                                        ]),
                                    Row(
                                      children: [
                                        Text('Expiry : 01/22'),
                                        SizedBox(width: 30,),
                                        Text('CVV : 908')
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height:110,
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
                                child: Image(image: AssetImage(AppIcons.circle,),),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BlackTextWidget(text: 'Master Card',fontSize: 18,fontWeight: FontWeight.w600,),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('XXXX  XXXX  XXXX  5678',
                                              style: TextStyle(color: Colors.grey,fontWeight:FontWeight.w400,fontSize: 10)),
                                          Icon(Icons.expand_circle_down_outlined,color: AppColors.greencolor,),
                                        ]),
                                    Row(
                                      children: [
                                        Text('Expiry : 01/22'),
                                        SizedBox(width: 30,),
                                        Text('CVV : 908')
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  GreenTextButton(text: 'Save settings', ontap: (){}),
                  SizedBox(height: 40,),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
