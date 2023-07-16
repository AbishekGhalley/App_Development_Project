import 'package:flutter/material.dart';

class TwoDots extends StatelessWidget {
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
    final dotFill2 = Paint()..color = Colors.white;

    final linePaint = Paint()
      ..color = Color.fromRGBO(217, 217, 217, 1)
      ..strokeWidth = 1.0;

    final dot1Offset = Offset(size.width / 2, dotRadius);
    final dot2Offset = Offset(size.width / 2, size.height - dotRadius);
    canvas.drawCircle(dot1Offset, dotRadius, dotPaint1);
    canvas.drawCircle(dot2Offset, dotRadius, dotPaint2);
    canvas.drawCircle(dot2Offset, dotRadius-1, dotFill2);

    final lineStart = Offset(size.width / 2, dotRadius + 5.0);
    final lineEnd = Offset(size.width / 2, size.height - dotRadius - 5);
    canvas.drawLine(lineStart, lineEnd, linePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
