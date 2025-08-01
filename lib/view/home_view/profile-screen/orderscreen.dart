// import 'package:flutter/ma''terial.dart';
//
// import '../../../controller/components/text-class.dart';
// import '../../../controller/utils/constants/appcolors/app_color.dart';
// import '../../../controller/utils/constants/appicons/app_icons.dart';
// class OrderScreen extends StatefulWidget {
//   const OrderScreen({super.key});
//
//   @override
//   State<OrderScreen> createState() => _OrderScreenState();
// }
//
// class _OrderScreenState extends State<OrderScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.whiteColor,
//         title: BlackTextWidget(text: 'My Order',fontWeight: FontWeight.w600,fontSize: 18,),
//         centerTitle: true,
//         leading: Image(image: AssetImage(AppIcons.backicon),color:
//         AppColors.blackColor,),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right:18.0),
//             child: Image(image: AssetImage(AppIcons.search2),color: AppColors.blackColor,),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8.0),
//           child: Column(
//             children: [
//               SizedBox(height: 20,),
//               Container(
//                 height: 280,
//                 width: 380,
//                 decoration: BoxDecoration(
//                   color: AppColors.whiteColor,
//                 ),
//                 child: Column(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.all(16),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                       ),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             height: 60,
//                             width: 60,
//                             decoration: BoxDecoration(
//                               color: Color(0xffEBFFD7),
//                               shape: BoxShape.circle,
//                             ),
//                             child: Image(image: AssetImage(AppIcons.order,),),
//                           ),
//                           SizedBox(width: 12),
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                     BlackTextWidget(text: 'Order #90897 ',fontSize: 18,fontWeight: FontWeight.w600,),
//                                 SizedBox(height: 4),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text("Placed on October 19 2021",
//                                         style: TextStyle(color: Colors.grey)),
//                                     Icon(Icons.expand_circle_down_outlined,color: AppColors.greencolor,),
//                                   ],
//                                 ),
//                                 SizedBox(height: 8),
//                                 Row(
//                                   children: [
//                                     Text("Items: 10"),
//                                     SizedBox(width: 16),
//                                     Text("Items: \$16.90"),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),),
//                    Divider(thickness: 1,color:AppColors.greyColor,) ,
//                     SizedBox(height: 12,),
//                     Row(
//                       children: [
//                             SizedBox(width: 10,),
//                         Icon(Icons.circle,color: AppColors.greencolor,size: 15,),
//                         SizedBox(width: 10,),
//                         BlackTextWidget(text: 'Order placed',fontWeight: FontWeight.w600,fontSize: 12,),
//                         SizedBox(width: 100,),
//                         BlackTextWidget(text: 'pending',textColor: AppColors.greyColor,fontWeight: FontWeight.w400,fontSize: 10,)
//                       ],
//                     ),
//                     SizedBox(height: 8,),
//                     Row(
//                       children: [
//                         SizedBox(width: 10,),
//                         Icon(Icons.circle,color: AppColors.greencolor,size: 15,),
//                         SizedBox(width: 10,),
//                         BlackTextWidget(text: 'Order placed',fontWeight: FontWeight.w600,fontSize: 12,),
//                         SizedBox(width: 100,),
//                         BlackTextWidget(text: 'pending',textColor: AppColors.greyColor,fontWeight: FontWeight.w400,fontSize: 10,)
//                       ],
//                     ),
//                     SizedBox(height: 8,),
//                     Row(
//                       children: [
//                         SizedBox(width: 10,),
//                         Icon(Icons.circle,color: AppColors.greencolor,size: 15,),
//                         SizedBox(width: 10,),
//                         BlackTextWidget(text: 'Order placed',fontWeight: FontWeight.w600,fontSize: 12,),
//                         SizedBox(width: 100,),
//                         BlackTextWidget(text: 'pending',textColor: AppColors.greyColor,fontWeight: FontWeight.w400,fontSize: 10,)
//                       ],
//                     ),
//                     SizedBox(height: 8,),
//                     Row(
//                       children: [
//                         SizedBox(width: 10,),
//                         Icon(Icons.circle,color: AppColors.greyColor,size: 15,),
//                         SizedBox(width: 10,),
//                         BlackTextWidget(text: 'Out for delivery',fontWeight: FontWeight.w600,fontSize: 12,textColor: AppColors.greyColor,),
//                         SizedBox(width: 80,),
//                         BlackTextWidget(text: 'pending',textColor: AppColors.greyColor,fontWeight: FontWeight.w400,fontSize: 10,)
//                       ],
//                     ),
//                     SizedBox(height: 8,),
//                     Row(
//                       children: [
//                         SizedBox(width: 10,),
//                         Icon(Icons.circle,color: AppColors.greyColor,size: 15,),
//                         SizedBox(width: 10,),
//                         BlackTextWidget(text: 'Order delivered',fontWeight: FontWeight.w600,fontSize: 12,textColor: AppColors.greyColor,),
//                         SizedBox(width: 80,),
//                         BlackTextWidget(text: 'pending',textColor: AppColors.greyColor,fontWeight: FontWeight.w400,fontSize: 10,)
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10,),
//               Column(
//                 children: [
//                   Container(
//                     width: double.infinity,
//                     padding: EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black12,
//                           blurRadius: 6,
//                           offset: Offset(0, 2),
//                         ),
//                       ],
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           height: 60,
//                           width: 60,
//                           decoration: BoxDecoration(
//                             color: Color(0xffEBFFD7),
//                             shape: BoxShape.circle,
//                           ),
//                           child: Image(image: AssetImage(AppIcons.order)),
//                         ),
//                         SizedBox(width: 12),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               BlackTextWidget(text: 'Order #90897 ',fontSize: 18,fontWeight: FontWeight.w600,),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   BlackTextWidget(text: 'Placed on Octobar 19 2021 ',fontSize: 10,fontWeight: FontWeight.w400,textColor: AppColors.greyColor,),
//                                   SizedBox(width: 4),
//                                   Icon(Icons.expand_circle_down_outlined,color: AppColors.greencolor,)
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   Text("Items: 10"),
//                                   SizedBox(width: 16),
//                                   Text("Items: \$16.90"),
//                                 ],
//                               ),
//                               Divider(thickness: 1,color: AppColors.greyColor,),
//                               Row(
//                                 children: [
//                                   Icon(Icons.circle,color: AppColors.greyColor,size: 10,),
//                                   SizedBox(width: 3,),
//                                   BlackTextWidget(text: 'Order Delivered',fontWeight: FontWeight.w600,fontSize: 12,textColor: AppColors.greyColor,)
//                                   , SizedBox(width:8,),
//                                   BlackTextWidget(text: 'Aug 29 2021',fontWeight: FontWeight.w500,fontSize: 10,textColor: AppColors.greyColor,)
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                   ),
//                   ),
//
//                 ],
//               ),
//               SizedBox(height: 12,),
//               Container(
//                 padding: EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 6,
//                       offset: Offset(0, 2),
//                     ),
//                   ],
//                 ),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 60,
//                       width: 60,
//                       decoration: BoxDecoration(
//                         color: Color(0xffEBFFD7),
//                         shape: BoxShape.circle,
//                       ),
//                       child: Image(image: AssetImage(AppIcons.order))
//                     ),
//                     SizedBox(width: 12),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children:[
//                           SizedBox(height: 4),
//                           BlackTextWidget(text: 'Order #90897 ',fontSize: 18,fontWeight: FontWeight.w600,),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               BlackTextWidget(text: 'Placed on Octobar 19 2021 ',fontSize: 10,fontWeight: FontWeight.w400,textColor: AppColors.greyColor,),
//                               SizedBox(width: 4),
//                               Icon(Icons.expand_circle_down_outlined,color: AppColors.greencolor,)
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Text("Items: 10"),
//                               SizedBox(width: 16),
//                               Text("Items: \$16.90"),
//                             ],
//                           ),
//                           Divider(thickness: 1,color: AppColors.greyColor,),
//                           Row(
//                             children: [
//                               Icon(Icons.circle,color: AppColors.greyColor,size: 10,),
//                               SizedBox(width: 3,),
//                               BlackTextWidget(text: 'Order Delivered',fontWeight: FontWeight.w600,fontSize: 12,textColor: AppColors.greyColor,)
//                               , SizedBox(width: 8,),
//                               BlackTextWidget(text: 'Aug 29 2021',fontWeight: FontWeight.w500,fontSize: 10,textColor: AppColors.greyColor,)
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 12,),
//               Container(
//                 padding: EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 6,
//                       offset: Offset(0, 2),
//                     ),
//                   ],
//                 ),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 60,
//                       width: 60,
//                       decoration: BoxDecoration(
//                         color: Color(0xffEBFFD7),
//                         shape: BoxShape.circle,
//                       ),
//                       child:Image(image: AssetImage(AppIcons.order)),
//                     ),
//                     SizedBox(width: 10),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           BlackTextWidget(text: 'Order #90897 ',fontSize: 18,fontWeight: FontWeight.w600,),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               BlackTextWidget(text: 'Placed on Octobar 19 2021 ',fontSize: 10,fontWeight: FontWeight.w400,textColor: AppColors.greyColor,),
//                               SizedBox(width: 4),
//                               Icon(Icons.expand_circle_down_outlined,color: AppColors.greencolor,)
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Text("Items: 10"),
//                               SizedBox(width: 16),
//                               Text("Items: \$16.90"),
//                             ],
//                           ),
//                           Divider(thickness: 1,color: AppColors.greyColor,),
//                           Row(
//                             children: [
//                               Icon(Icons.circle,color: AppColors.greyColor,size: 10,),
//                               SizedBox(width: 3,),
//                               BlackTextWidget(text: 'Order Delivered',fontWeight: FontWeight.w600,fontSize: 12,textColor: AppColors.greyColor,),
//                              SizedBox(width: 8,),
//                               BlackTextWidget(text: 'Aug 29 2021',fontWeight: FontWeight.w500,fontSize: 10,textColor: AppColors.greyColor,)
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//
//
//
//                   ],
//                 ),
//               ),
//
//                             SizedBox(height: 20,),
//         ]),
//       ),
//     ),);
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/view/home_view/track_screen/track_screen.dart';

import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<bool> _isExpanded = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(
          text: 'My Order',
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Image(
              image: AssetImage(AppIcons.backicon),
              color: AppColors.blackColor,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TrackScreen()));
              },
              child: Image(
                image: AssetImage(AppIcons.search2),
                color: AppColors.blackColor,
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 50),
        itemBuilder: (context, index) {
          return Column(
            children: [
              ExpansionPanelList(
                elevation: 1,
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    _isExpanded[index] = !_isExpanded[index];
                  });
                },
                children: [
                  ExpansionPanel(
                    isExpanded: _isExpanded[index],
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: Color(0xffEBFFD7),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(image: AssetImage(AppIcons.order)),
                          ),
                        ),
                        title: BlackTextWidget(textalignn: TextAlign.start,
                          text: 'Order #90897',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Placed on October 19 2021",
                                style: TextStyle(color: Colors.grey, fontSize: 12)),
                            SizedBox(height: 4),
                            Text("Items: 10  |  Total: \$16.90",
                                style: TextStyle(fontSize: 12)),
                        ]
                        ),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(thickness: 1, color: AppColors.greyColor),
                          buildStatusRow('Order placed', 'Pending', true),
                          buildStatusRow('Order confirmed', 'Pending', true),
                          buildStatusRow('Order prepared', 'Pending', true),
                          buildStatusRow('Out for delivery', 'Pending', false),
                          buildStatusRow('Order delivered', 'Pending', false),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),

            ],
          );
        },
      ),
    );
  }

  Widget buildStatusRow(String title, String status, bool completed) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.circle,
                  size: 12, color: completed ? AppColors.greencolor : AppColors.greyColor),
              SizedBox(width: 8),
              BlackTextWidget(
                text: title,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                textColor: completed ? AppColors.blackColor : AppColors.greyColor,
              ),
            ],
          ),
          BlackTextWidget(
            text: status,
            fontSize: 10,
            fontWeight: FontWeight.w400,
            textColor: AppColors.greyColor,
          ),
        ],
      ),
    );
  }
}
