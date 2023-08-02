import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myekigai/constants/constants.dart';

class Locator extends StatelessWidget {
  final String avalaibility;
  final VoidCallback? onPressed;
  const Locator(
      {super.key, required this.avalaibility, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SvgPicture.asset(
          avalaibility, // Replace with your SVG asset path
          height: 8, // Set the height of the SVG
          width: 8, // Set the width of the SVG
        ),
        IconButton(
            onPressed: onPressed,
            icon: Image.asset(ReserveVehicleAssets.imlocatorPin))
      ],
    );
  }
}
