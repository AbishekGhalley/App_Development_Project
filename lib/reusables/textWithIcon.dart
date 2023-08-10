import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWithIcon extends StatelessWidget {
  final String icon;
  final String text;
  const TextWithIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(0)),
      child: Row(
        children: [
          Container(
              width: ScreenUtil().setWidth(27),
              height: ScreenUtil().setHeight(27),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(icon), fit: BoxFit.contain))),
          const SizedBox(
            width: 13,
          ),
          Text(
            text,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500, fontSize: ScreenUtil().setSp(18)),
          )
        ],
      ),
    );
  }
}
