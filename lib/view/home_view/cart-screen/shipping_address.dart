import 'package:flutter/material.dart';

import '../../../controller/components/text-class.dart';
import '../../../controller/utils/constants/appcolors/app_color.dart';
import '../../../controller/utils/constants/appicons/app_icons.dart';
class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          title: BlackTextWidget(
            text: 'Shopping Cart',
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
      body: Column(

      ),
    );
  }
}
