import 'package:flutter/animation.dart';

class GridContainer{
  final String text;
  final String subtitle;
  final String image;
  final String price;
  final Color color;
  final String cartprice;
  GridContainer(this.color, {required this.text,required this.image, required this.price,required this.subtitle,required this.cartprice});
}