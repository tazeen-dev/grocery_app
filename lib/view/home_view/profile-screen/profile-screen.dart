import 'package:flutter/material.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(child: Container(
                height: 145,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor.opacity(0.5)
                ),
              )),
              
            ],
          )
        ],
      ),
    );
  }
}

