import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/theme/pallete.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool disabled; // New property to indicate button state

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.disabled = false, // Default is not disabled
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(16)), // Set the horizontal margin
      width:
          double.infinity, // Set the width to occupy the full available space
      child: TextButton(
        style: ButtonStyle(
          splashFactory: NoSplash.splashFactory,
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(vertical:  ScreenUtil().setHeight(16))),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (disabled) {
              return Pallete.btnDisabledColor;
            } else if (states.contains(MaterialState.pressed)) {
              return Pallete.btnTextColor;
            } else {
              return Pallete.primaryColor;
            }
          }),
        ),
        onPressed: disabled
            ? null
            : onPressed, // Disable onPressed callback if disabled
        child: Text(
          text,
          style: GoogleFonts.sen(
            fontSize: ScreenUtil().setSp(16),
            fontWeight: FontWeight.bold,
            color: disabled ? Pallete.btnTextColor : Pallete.btnTextColor,
          ),
        ),
      ),
    );
  }
}
