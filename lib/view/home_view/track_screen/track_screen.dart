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
    'Order #90897 ',
    'Order Shipped',
    'Order Confirmed',
    'Order Shipped',
    'Out for Delivery',
    'Order Delivered',
  ];
  List<String> text2 = [
    'Items: 10 Items: \$16.90 ',
    '',
    '',
    '',
    '',
    '',
  ];
  List<String> subtext = [
    ' Placed on Octobar 19 2021',
    'Octobar 21 2021',
    'Octobar 21 2021',
    'Octobar 21 2021',
    'Pending',
    'Pending',
  ];
  List<String> images = [
    AppIcons.ordertrack,
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
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 750,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: text.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Container(
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

                                        BlackTextWidget(
                                          text: text2[index],
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
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
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
