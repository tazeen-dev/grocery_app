import 'package:flutter/material.dart';
import 'package:grocery_app/model/product_model/product_list_model.dart';
class ProfileList{
  final String image;
  final String text;
  final IconData icon;
  final Widget screen;
  ProfileList(this.screen, {required this.text,required this .image,required this.icon});
}
