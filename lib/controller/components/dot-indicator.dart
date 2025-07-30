import 'package:flutter/material.dart';
import 'package:grocery_app/controller/utils/constants/appcolors/app_color.dart';
class DotIndicator extends StatefulWidget {
  final int currentIndex;
  final int itemCount;
  const DotIndicator({
    Key? key,
    required this.currentIndex,
    required this.itemCount,
  }) : super(key: key);

  @override
  State<DotIndicator> createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        widget.itemCount,
            (index) => Container(
          width:widget.currentIndex==index?60:15,
          height:widget.currentIndex==index?12:12 ,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape:widget.currentIndex==index? BoxShape.rectangle:BoxShape.circle,
            borderRadius:  widget.currentIndex==index?BorderRadius.circular(10):null,
            color: widget.currentIndex == index ? AppColors.DarkGreen : AppColors.greyColor,
          ),
        ),
      ),
    );
  }
}
