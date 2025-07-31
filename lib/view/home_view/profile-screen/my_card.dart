import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/textfield.dart';
import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}
class _MyCardState extends State<MyCard> {
  TextEditingController userController = TextEditingController();
  TextEditingController cardController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final padding = width * 0.05;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(
          text: 'Add Credit Card',
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            AppIcons.backicon,
            color: AppColors.blackColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Credit card UI container
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
                    left: 20,
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
                    bottom: 30,
                    left: 20,
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
                        const SizedBox(width: 50),
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
                  Positioned(
                    bottom: 50,
                    left: 20,
                    child: Text(
                      'XXXX XXXX',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Form fields
            TextFeildWidget(
              hintext: 'Name on the card',
              prefixIcons: Icons.person_outline_sharp,
              controller: userController,
              color: AppColors.whiteColor,
            ),
            const SizedBox(height: 10),
            TextFeildWidget(
              hintext: 'Card Number',
              prefixIcons: Icons.credit_card,
              controller: cardController,
              color: AppColors.whiteColor,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextFeildWidget(
                    hintext: 'Expiry Date',
                    prefixIcons: Icons.date_range,
                    controller: dateController,
                    color: AppColors.whiteColor,
                  ),
                ),
                const SizedBox(width: 10),
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
            const SizedBox(height: 30),

            // Switch
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlackTextWidget(
                  text: 'Save this card',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    print("Switch tapped: $value"); // For debug
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeColor: AppColors.DarkGreen,
                  inactiveThumbColor: Colors.grey,
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                isSwitched ? 'ON' : 'OFF',
                style: TextStyle(
                  color: isSwitched ? Colors.green : Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
