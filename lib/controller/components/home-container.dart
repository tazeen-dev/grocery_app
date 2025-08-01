import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
class HomeContainer extends StatelessWidget {
  final String text;
  final String images;
  const HomeContainer({super.key, required this.text, required this.images});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 283,
          width: 380,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(images)),
          ),
        ),
        BlackTextWidget(text: text,
            fontWeight: FontWeight.w600,fontSize: 18,),
      ],
    );
  }
}

