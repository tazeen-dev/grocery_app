import 'package:flutter/material.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';

class NotifictionScreen extends StatefulWidget {
  const NotifictionScreen({super.key});

  @override
  State<NotifictionScreen> createState() => _NotifictionScreenState();
}

class _NotifictionScreenState extends State<NotifictionScreen> {
  List<String> text = [
    'Allow Notifications',
    'Email Notifications',
    'Order Notifications',
    'General Notifications',
  ];

  // Separate switch state for each item
  List<bool> switches = List.filled(4, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(
          text: 'Notifications',
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,),
          child: Column(
            children: [
              SizedBox(height: 50),
              ListView.builder(
                itemCount: text.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                      //  borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15),
                          BlackTextWidget(
                            text: text[index],
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: BlackTextWidget(
                                  text:
                                  'Lorem ipsum dolor sit amet, consetetur sadi pscing elitr, sed diam nonumym',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  textColor: AppColors.greyColor,
                                ),
                              ),
                              Transform.scale(
                                scale: 0.7,
                                child: Switch(
                                  value: switches[index],
                                  activeColor: AppColors.greencolor,
                                  activeTrackColor:
                                  AppColors.greencolor.withOpacity(0.5),
                                  inactiveThumbColor: AppColors.greyColor,
                                  inactiveTrackColor: Colors.grey.shade300,
                                  onChanged: (val) {
                                    setState(() {
                                      switches[index] = val;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
