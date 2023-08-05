import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWithIcon extends StatelessWidget {
  final String icon;
  final String text;
  const TextWithIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(icon), fit: BoxFit.contain))),
        const SizedBox(
          width: 13,
        ),
        Text(
          text,
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 16),
        )
      ],
    );
  }
}
