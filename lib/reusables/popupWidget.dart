import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/reusables/reusables.dart';
import 'package:myekigai/theme/theme.dart';

class PopupWidget extends StatelessWidget {
  final VoidCallback onReturnTap;
  final String returnText;
  final String titleText;
  final String btnText;

  const PopupWidget(
      {super.key,
      required this.onReturnTap,
      required this.titleText,
      required this.returnText,
      required this.btnText});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.012),
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Reserve vehicle?',
              style: GoogleFonts.sen(
                fontSize: ScreenUtil().setSp(20),
                fontWeight: FontWeight.w400,
                color: Pallete.textColor,
              ),
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(22)),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                onPressed: onReturnTap
                // Handle the reservation logic here
                // For example, you can show a confirmation message and navigate back to the previous screen.

                ,
                text: btnText,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  returnText,
                  style: GoogleFonts.sen(
                      decoration: TextDecoration.underline,
                      fontSize: ScreenUtil().setSp(18),
                      color: Pallete.primaryColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          SizedBox(height: ScreenUtil().setHeight(14)),
        ],
      ),
    );
  }
}
