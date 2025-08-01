import 'package:flutter/material.dart';

import '../../../controller/components/green_text_button.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/components/textfield.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
import 'address_screen.dart';

class MyAddressScreen extends StatefulWidget {
  MyAddressScreen({super.key});

  @override
  State<MyAddressScreen> createState() => _MyAddressScreenState();
}

class _MyAddressScreenState extends State<MyAddressScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  bool saveThisAddress=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(
          text: 'My Address',
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
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddressScreen()));
              },
              icon: Icon(
                Icons.add_circle_outline,
                size: 18,
                color: AppColors.blackColor,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(children: [
              SizedBox(
                height: 40,
              ),
              Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                ),
                child: Column(children: [
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
                            color: Color(0xffEBFFD7),
                            shape: BoxShape.circle,
                          ),
                          child: Image(
                            image: AssetImage(
                              AppIcons.address,
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BlackTextWidget(
                                text: 'Russell Austin',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "2811 Crescent Day. LA Port \n California, United States 77571",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10)),
                                    Icon(
                                      Icons.expand_circle_down_outlined,
                                      color: AppColors.greencolor,
                                    ),
                                  ]),
                              SizedBox(
                                height: 4,
                              ),
                              BlackTextWidget(
                                text: '+1  202  555  0142 ',
                                textColor: AppColors.blackColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: AppColors.greyColor,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextFeildWidget(
                        hintext: 'name',
                        prefixIcons: Icons.account_circle_outlined,
                        controller: nameController,
                        color: Color(0xffF4F5F9)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextFeildWidget(
                        hintext: 'Address',
                        prefixIcons: Icons.location_on,
                        controller: addressController,
                        color: Color(0xffF4F5F9)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextFeildWidget(
                        hintext: 'city',
                        prefixIcons: Icons.location_city_sharp,
                        controller: cityController,
                        color: Color(0xffF4F5F9)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextFeildWidget(
                        hintext: 'Zip code',
                        prefixIcons: Icons.margin,
                        controller: zipcodeController,
                        color: Color(0xffF4F5F9)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextFeildWidget(
                        hintext: 'Country',
                        prefixIcons: Icons.language,
                        controller: countryController,
                        color: Color(0xffF4F5F9)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextFeildWidget(
                        hintext: 'Phone number',
                        prefixIcons: Icons.phone_outlined,
                        controller: phonenumberController,
                        color: Color(0xffF4F5F9)),
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 0.7, // adjust size (e.g., 0.8 = 80%)
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
                      BlackTextWidget(
                        text: 'Make default',
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 110,
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
                              color: Color(0xffEBFFD7),
                              shape: BoxShape.circle,
                            ),
                            child: Image(
                              image: AssetImage(
                                AppIcons.address,
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BlackTextWidget(
                                  text: 'Jissca Simpson',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          "2811 Crescent Day. LA Port \n California, United States 77571",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10)),
                                      Icon(
                                        Icons.expand_circle_down_outlined,
                                        color: AppColors.greencolor,
                                      ),
                                    ]),
                                SizedBox(
                                  height: 4,
                                ),
                                BlackTextWidget(
                                  text: '+1  202  555  0142 ',
                                  textColor: AppColors.blackColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
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
              SizedBox(
                height: 40,
              ),
              GreenTextButton(text: 'Save settings', ontap: () {}),
              SizedBox(
                height: 40,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
