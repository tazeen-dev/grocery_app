import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/green_text_button.dart';
import 'package:grocery_app/controller/components/textfield.dart';
import 'package:grocery_app/view/home_view/profile-screen/creditcard_screen.dart';
import '../../controller/components/text-class.dart';
import '../../controller/utils/constants/appcolors/app_color.dart';
import '../../controller/utils/constants/appicons/app_icons.dart';

class PayementScreen extends StatefulWidget {
  const PayementScreen({super.key});

  @override
  State<PayementScreen> createState() => _PayementScreenState();
}

class _PayementScreenState extends State<PayementScreen> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController cardController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        title: BlackTextWidget(
          text: 'Payment Method',
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AppIcons.backicon, color: AppColors.blackColor),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(backgroundColor: AppColors.DarkGreen, radius: 18, child: Icon(Icons.check, size: 18, color: AppColors.whiteColor)),
                    buildLine(),
                    CircleAvatar(backgroundColor: AppColors.DarkGreen, radius: 18, child: Icon(Icons.check, size: 18, color: AppColors.whiteColor)),
                    buildLine(),
                    CircleAvatar(backgroundColor: AppColors.DarkGreen, radius: 18, child: Icon(Icons.check, size: 18, color: AppColors.whiteColor)),
                  ],
                ),
              ),

              Container(
                height: 189,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.DarkGreen, AppColors.LightGreen],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 40,
                      child: CircleAvatar(
                        backgroundColor: const Color(0xffF14336),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 70,
                      child: CircleAvatar(
                        backgroundColor: const Color(0xffFFC107),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xff6CC51D),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 78,
                      left: 30,
                      child: Row(
                        children: [
                          for (int i = 0; i < 3; i++) ...[
                            Text(
                              'XXXX',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: AppColors.whiteColor,
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                          Text(
                            '8790',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 25,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Russell austin',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.whiteColor,
                            ),
                          ),
                          const SizedBox(width: 70),
                          Text(
                            '01 / 22',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 38,
                      left: 25,
                      child: Row(
                        children: [
                          Text(
                            'Card holder',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.whiteColor,
                            ),
                          ),
                          const SizedBox(width: 80),
                          Text(
                            'Expires',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BlackTextWidget(text: 'Delivery', fontWeight: FontWeight.w600, fontSize: 12, textColor: AppColors.greyColor),
                  BlackTextWidget(text: 'Address', fontWeight: FontWeight.w600, fontSize: 12, textColor: AppColors.greyColor),
                  BlackTextWidget(text: 'Payment', fontWeight: FontWeight.w600, fontSize: 12, textColor: AppColors.greyColor),
                ],
              ),

              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  paymentOptionCard(AppIcons.paypal, 'Paypal'),
                  paymentOptionCard(AppIcons.cardIcon, 'Card'),
                  paymentOptionCard(AppIcons.appleIcon, 'Apple Pay'),
                ],
              ),

              const SizedBox(height: 20),
              TextFeildWidget(
                hintext: 'Name on the card',
                prefixIcons: Icons.account_circle_outlined,
                controller: userController,
                color: AppColors.whiteColor,
              ),
              const SizedBox(height: 12),
              TextFeildWidget(
                hintext: 'Card number',
                prefixIcons: Icons.credit_card,
                controller: cardController,
                color: AppColors.whiteColor,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: TextFeildWidget(
                      hintext: 'Month / Year',
                      prefixIcons: Icons.date_range_outlined,
                      controller: dateController,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextFeildWidget(
                      hintext: 'CVV',
                      prefixIcons: Icons.lock_outline,
                      controller: cvvController,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),
              GreenTextButton(
                text: 'Make a Payment',
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CreditcardScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLine() => Container(height: 2, width: 90, color: AppColors.DarkGreen);

  Widget paymentOptionCard(String iconPath, String label) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Card(
        color: AppColors.whiteColor,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(iconPath, height: 32),
              const SizedBox(height: 6),
              BlackTextWidget(
                text: label,
                fontWeight: FontWeight.w500,
                fontSize: 11,
                textColor: AppColors.greyColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
