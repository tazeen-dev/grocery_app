import 'package:flutter/material.dart';
import 'package:grocery_app/controller/components/text-class.dart';
class PageContainer extends StatefulWidget {
  final String text;
  final String image;
  const PageContainer({super.key, required this.text, required this.image});

  @override
  State<PageContainer> createState() => _PageContainerState();
}

class _PageContainerState extends State<PageContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 278,
      width: 490,
      decoration: BoxDecoration(
        image: DecorationImage(image:AssetImage(widget.image)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 130.0,right: 150.0),
        child: BlackTextWidget(text: widget.text,fontSize: 20,fontWeight:   FontWeight.w700,),
      ),
    );
  }
}
