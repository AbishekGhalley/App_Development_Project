import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/theme/pallete.dart';

class VehicleCardWithLargeImage extends StatelessWidget {
  final String image;
  final String name;
  final String brand;
  final String stars;

  const VehicleCardWithLargeImage(
      {super.key,
      required this.image,
      required this.name,
      required this.brand,
      required this.stars});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.32,
        child: Stack(children: [
          Positioned(
            left: 44,
            top: ScreenUtil().setHeight(44),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.sen(
                    color: Pallete.textColor,
                    fontWeight: FontWeight.w700,
                    fontSize: ScreenUtil().setSp(28),
                  ),
                ),
                Text(
                  brand,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                    color: Pallete.geryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenUtil().setSp(19),
                  ),
                ),
                Text(
                  stars,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                    color: Pallete.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenUtil().setSp(16),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(26),
            right: ScreenUtil().setWidth(28),
            child: Container(
                width: ScreenUtil().setWidth(232),
                height: ScreenUtil().setHeight(260),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.scaleDown))),
          )
        ]));
  }
}
