import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/theme/pallete.dart';

class VehicleInfoBox extends StatelessWidget {
  final String icon;
  final String midText;
  final String bottomText;
  const VehicleInfoBox(
      {super.key,
      required this.icon,
      required this.midText,
      required this.bottomText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 106,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(171, 171, 171, 0.25),
          offset: Offset(0, 0),
          spreadRadius: 0,
          blurRadius: 1,
        ),
        BoxShadow(
          color: Colors.white,
          offset: Offset(0, 0),
          spreadRadius: 0,
          blurRadius: 0,
        ),
      ], borderRadius: BorderRadius.all(Radius.circular(8))),
      width: 98,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(icon), fit: BoxFit.contain))),
          const SizedBox(height: 5),
          Text(
            midText,
            style: GoogleFonts.montserrat(
              color: Pallete.geryColor,
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
          Text(
            bottomText,
            style: GoogleFonts.montserrat(
              color: Pallete.textColor,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
