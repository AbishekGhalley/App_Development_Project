import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/theme/pallete.dart';

class ServiceIconWithText extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  final String text;
  const ServiceIconWithText(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          child: Column(
        children: [
          Image(
            image: AssetImage(icon),
            width: 90,
            height: 50,
          ),
          Text(
            text,
            style: GoogleFonts.sen(
              color: Pallete.textColor,
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
          )
        ],
      )),
    );
  }
}
