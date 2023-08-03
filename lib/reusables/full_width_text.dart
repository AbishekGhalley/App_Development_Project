import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/theme/pallete.dart';

class FullWidthTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;
  final double horizontalPadding;
  final TextAlign textAlign;
  const FullWidthTextWidget(
      {super.key,
      required this.text,
      this.fontSize = 18,
      this.textColor = Pallete.textColor,
      this.fontWeight = FontWeight.w600,
      this.horizontalPadding = 20,
      this.textAlign = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      width:
          MediaQuery.of(context).size.width, // Set the width to occupy the full available space
      child: Text(
        text,
        style: GoogleFonts.montserrat(
            fontSize: fontSize, fontWeight: fontWeight, color: textColor),
        textAlign: textAlign, // Adjust the text alignment as needed
      ),
    );
  }
}
