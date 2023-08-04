import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myekigai/theme/pallete.dart';

class Addbtn extends StatelessWidget {
  const Addbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child: Text(
        'Add+',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Pallete.primaryColor,
          fontSize: ScreenUtil().setSp(16),
          fontFamily: 'Sen',
          fontWeight: FontWeight.w400,
        ),
      ),);
  }
}
