import 'package:flutter/material.dart';

class TopRoundedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Start from bottom-left
    path.moveTo(0, size.height);

    // Go up to top-left
    path.lineTo(0, 100);

    // Create the curved "D" shape on top using a quadratic bezier
    path.quadraticBezierTo(
      size.width / 2, -50, // control point above the container
      size.width, 100,      // end point on top-right
    );

    // Down to bottom-right
    path.lineTo(size.width, size.height);

    // Close the path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
