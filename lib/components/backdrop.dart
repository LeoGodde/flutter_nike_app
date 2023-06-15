import 'package:flutter/material.dart';

class Backdrop extends CustomPainter {
  final Color color;

  Backdrop({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color;
    canvas.drawRRect(
        RRect.fromRectAndCorners(Rect.fromLTWH(size.width * -0.1946667, size.height * -2.021834, size.width * 1.674667, size.height * 2.742358),
            bottomRight: Radius.circular(size.width * 0.8373333),
            bottomLeft: Radius.circular(size.width * 0.8373333),
            topLeft: Radius.circular(size.width * 0.8373333),
            topRight: Radius.circular(size.width * 0.8373333)),
        paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
