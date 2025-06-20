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
              Expanded(
                flex: 20,
                  child: Container(
                height: 145,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                ),
              )),
              Expanded(
                  flex: 80,
                  child: Container(
              width: double.infinity,
                    color: Colors.grey.withOpacity(0.5),
                  decoration: BoxDecoration(
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: )
                        ),
                      )
                    ],
                  ),),
              )
            ],
          )
        ],
      ),
    );
  }
}

