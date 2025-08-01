import 'package:flutter/animation.dart';

class GridContainer{
  bool? isNew;
  bool? isDisount;
  String? discountValue;
  final String text;
  final String subtitle;
  final String image;
  final String price;
  final Color color;
  final String cartprice;
  bool isFavourite;
  GridContainer({  this.color= const Color(0xffffff),this.isNew=false,this.isDisount=false,this.discountValue='0', required this.text,required this.image,
     required this.price,required this.subtitle,required this.cartprice,this.isFavourite=false});
}