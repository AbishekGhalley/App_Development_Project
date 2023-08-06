import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myekigai/constants/AllAssets/splash_assets.dart';

class SplashScreen extends StatelessWidget {

  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              SplashAssets.Logo,
              height: ScreenUtil().setWidth(140),
              width: ScreenUtil().setWidth(140),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Myekigai",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Quantico',
                fontSize: ScreenUtil().setSp(48),
                fontWeight: FontWeight.w700,
                letterSpacing: 0.96,
              ),
            )
          ],
        ),
      )
    );
  }
}
