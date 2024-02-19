import 'dart:math';
import 'package:flutter/material.dart';

class MultiColorCircle extends StatelessWidget {
  final List<Color> colors;
  final double size;

  const MultiColorCircle({super.key, required this.colors, this.size = 80});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: _MultiColorCirclePainter(colors),
    );
  }
}

class _MultiColorCirclePainter extends CustomPainter {
  final List<Color> colors;

  _MultiColorCirclePainter(this.colors);

  @override
  void paint(Canvas canvas, Size size) {
    double radius = size.width / 2;
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    double startAngle = -pi / 2; // Start angle at 12 o'clock position
    double totalColors = colors.length.toDouble();
    double arcAngle = 2 * pi / totalColors; // Angle for each color sector

    for (int i = 0; i < colors.length; i++) {
      Paint paint = Paint()
        ..color = colors[i]
        ..style = PaintingStyle.fill;

      double sweepAngle = arcAngle;

      canvas.drawArc(
        Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
        startAngle,
        sweepAngle,
        true,
        paint,
      );

      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
