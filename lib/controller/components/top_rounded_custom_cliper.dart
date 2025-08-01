import 'package:flutter/material.dart';

class BottomRoundedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Start from top-left
    path.moveTo(0, 0);

    // Line to top-right
    path.lineTo(size.width, 0);

    // Line to bottom-right
    path.lineTo(size.width, size.height - 100);

    // Add the curved "D" shape at bottom using quadratic bezier
    path.quadraticBezierTo(
      size.width / 2, size.height + 50, // control point below the container
      0, size.height - 100,             // end point at bottom-left
    );

    // Close the path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
