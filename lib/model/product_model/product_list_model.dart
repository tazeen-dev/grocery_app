import 'package:flutter/widgets.dart';

import '../../controller/utils/constants/appcolors/app_color.dart';
class ProductList{
  final String image;
  final String text;
   final Color appcolor;
   final Widget screen;
  ProductList(this.screen, {this.appcolor=AppColors.LightGreen ,required this.text,required this.image,});
}