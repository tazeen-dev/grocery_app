import 'package:flutter/material.dart';
class TextFeildWidget extends StatelessWidget {
  final String hintext;
  final Color textcolors;
  final IconData prefixIcon;
  final TextEditingController controller;
  const TextFeildWidget({super.key, required this.hintext,
    required this.textcolors, required this.prefixIcon, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color:textcolors)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:textcolors),
            borderRadius: BorderRadius.zero,
          ),
          filled: true,
          fillColor: textcolors,
          hintText: hintext,
          hintStyle: TextStyle(
            color: textcolors,
          ),
        prefixIcon: Icon(prefixIcon),
      ),
    );
  }
}
