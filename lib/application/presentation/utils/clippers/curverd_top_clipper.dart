import 'package:flutter/material.dart';

class CurvedTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, 40); // Start from bottom-left corner
    path.quadraticBezierTo(0, 0, 40, 0); // Curve to top-left corner
    path.lineTo(size.width - 40, 0); // Line to top-right corner minus curve
    path.quadraticBezierTo(size.width, 0, size.width, 40); // Curve to bottom-right corner
    path.lineTo(size.width, size.height); // Line to bottom-right corner
    path.lineTo(0, size.height); // Line to bottom-left corner
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
