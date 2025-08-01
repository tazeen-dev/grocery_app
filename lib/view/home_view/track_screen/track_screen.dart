import 'package:flutter/material.dart';

import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';

class TrackScreen extends StatefulWidget {
  const TrackScreen({super.key});

  @override
  State<TrackScreen> createState() => _TrackScreenState();
}

class _TrackScreenState extends State<TrackScreen> {
  List<String> text = [
    'Order Placed',
    'Order Confirmed',
    'Order Shipped',
    'Out for Delivery',
    'Order Delivered',
  ];
  List<String> subtext = [
    'Octobar 21 2021',
    'Octobar 21 2021',
    'Octobar 21 2021',
    'Pending',
    'Pending',
  ];
  List<String> images = [
    AppIcons.orderplaced,
    AppIcons.check,
    AppIcons.orderedshipped,
    AppIcons.outofdeleverd,
    AppIcons.deleverd,
  ];
  List<Color> colors=[
    Color(0xffEBFFD7),
    Color(0xffEBFFD7),
    Color(0xffEBFFD7),
    Color(0xffF5F5F5),
    Color(0xffF5F5F5),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(
          text: 'Track Order',
          fontWeight: FontWeight.w500,
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
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
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
                        color:Color(0xffEBFFD7),
                        shape: BoxShape.circle,
                      ),
                      child: Image(
                        image: AssetImage(AppIcons.ordertrack),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          BlackTextWidget(
                            text: 'Order #90897 ',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          BlackTextWidget(
                            text: 'Placed on Octobar 19 2021',
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.greyColor,
                          ),
                          Row(
                            children: [
                              BlackTextWidget(
                                text: 'Items: 10',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                              BlackTextWidget(
                                text: 'Items: 10',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 600,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: text.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:AppColors.whiteColor,
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
                                      color:colors[index],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image(
                                      image: AssetImage(images[index]),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        BlackTextWidget(
                                          text: text[index],
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        BlackTextWidget(
                                          text: subtext[index],
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          textColor: AppColors.greyColor,
                                        ),
                                        SizedBox(height: 10,),
                                        Divider(color: AppColors.greyColor,),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
