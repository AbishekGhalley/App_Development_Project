import 'package:flutter/material.dart';

class TwoDots extends StatelessWidget {
  const TwoDots({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50, // adjust width as needed
      height: 150, // adjust height as needed
      child: CustomPaint(
        painter: DotsPainter(),
      ),
    );
  }
}

class DotsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const dotRadius = 5.0;
    final dotPaint1 = Paint()..color = Colors.black;
    final dotPaint2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;
    final dotFill2 = Paint()..color = Colors.black;

    final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1.0;

    final dot1Offset = Offset(size.width / 2, dotRadius);
    final dot2Offset = Offset(size.width / 2, size.height - dotRadius);
    canvas.drawCircle(dot1Offset, dotRadius, dotPaint1);
    canvas.drawCircle(dot2Offset, dotRadius, dotPaint2);
    canvas.drawCircle(dot2Offset, dotRadius - 1, dotFill2);

    final lineStart = Offset(size.width / 2, dotRadius + 5.0);
    final lineEnd = Offset(size.width / 2, size.height - dotRadius - 5);
    const double dashWidth = 5;
    const double dashSpace = 5;
    double distance = 0.0;
    bool draw = true;
    while (distance <= size.height - 2 * dotRadius) {
      if (draw) {
        canvas.drawLine(lineStart + Offset(0, distance),
            lineStart + Offset(0, distance + dashWidth), linePaint);
      }
      distance += dashWidth + dashSpace;
      draw = !draw;
    }

    canvas.drawLine(lineStart, lineEnd, linePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
