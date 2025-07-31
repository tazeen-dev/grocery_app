import 'package:flutter/material.dart';

import '../utils/constants/appcolors/app_color.dart';
class PasswordWidget extends StatefulWidget {
  final String hintext;
  final TextInputType textInputType;
  final IconData prefixIcons;
  final TextEditingController controller;
  const PasswordWidget({super.key, required this.hintext, this.textInputType=TextInputType.text,
    required this.prefixIcons, required this.controller});
  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}
class _PasswordWidgetState extends State<PasswordWidget> {
  bool isSecure=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        controller:widget.controller,
        obscureText: isSecure,
        keyboardType:widget.textInputType,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: AppColors.whiteColor)
          ),
          focusedBorder: OutlineInputBorder(
           borderSide: BorderSide(color: AppColors.whiteColor),
            borderRadius: BorderRadius.zero,
          ),
          filled: true,
          fillColor: AppColors.whiteColor,
          hintText:widget.hintext,
          hintStyle: TextStyle(
            color: AppColors.greyColor
          ),
          prefixIcon: Icon(widget.prefixIcons,color: AppColors.greyColor,),
          suffixIcon: IconButton(onPressed: (){
            if(isSecure==false){
              isSecure=true;
            }
            else{
              isSecure=false;
            }
            setState(() {
            });
          },
              icon :Icon( isSecure?Icons.visibility_off_outlined:Icons.visibility_outlined,color: AppColors.greyColor))
        ),
      ),
    );
  }
}
