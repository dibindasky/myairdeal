import 'package:flutter/material.dart';

class AppbarClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final x = size.width;
    final y = size.height;
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(x, 0);
    path.lineTo(x, y - 45);
    path.quadraticBezierTo(x, y, x - 60, y);
    path.lineTo(x / 3, y - 18);
    path.lineTo(50, y);
    path.quadraticBezierTo(0, y, 0, y - 40);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class AppbarClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final x = size.width;
    final y = size.height;
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(x, 0);
    path.lineTo(x, y - 55);
    path.quadraticBezierTo(x - 10, y - 10, x - 60, y - 15);
    path.lineTo(x / 3 + 5, y - 30);
    path.lineTo(50, y - 15);
    path.quadraticBezierTo(10, y - 10, 0, y - 55);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
