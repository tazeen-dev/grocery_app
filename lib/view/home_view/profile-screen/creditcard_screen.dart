import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
import 'package:grocery_app/controller/utils/constants/appicons/app_icons.dart';
class CreditcardScreen extends StatefulWidget {
  const CreditcardScreen({super.key});

  @override
  State<CreditcardScreen> createState() => _CreditcardScreenState();
}

class _CreditcardScreenState extends State<CreditcardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: BlackTextWidget(text: 'Add To card'),
        leading: Image(image: AssetImage(AppIcons.backicon)),
      ),
      body: Text('heelo'),
    );
  }
}
