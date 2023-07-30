import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/theme/pallete.dart';

import '../../../constants/assets_constants.dart';

class LargeLocator extends StatelessWidget {
  final VoidCallback onPressed;
  const LargeLocator({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            const SizedBox(
              height: 11,
            ),
            IconButton(
              onPressed: onPressed,
              icon: Container(
                child: Image.asset(
                  AssetsConstants
                      .imlargelocator, // Replace with your custom image path
                  width:
                      48, // You can also set width directly on the Image widget
                  height:
                      48, // You can also set height directly on the Image widget
                ),
              ),
            )
          ],
        ),
        Container(
          width: 141,
          height: 35,
          decoration: ShapeDecoration(
            color: Pallete.btnTextColor,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.50, color: Color(0xFF09ABE5)),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: Center(
              child: Text(
            '5 Slots Available',
            style: GoogleFonts.montserrat(
              color: Pallete.textColor,
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          )),
        ),
      ],
    );
  }
}
