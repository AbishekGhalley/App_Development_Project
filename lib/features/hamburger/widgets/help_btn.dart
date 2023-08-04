import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myekigai/theme/pallete.dart';

class Helpbtn extends StatelessWidget {
  final String btnimage;
  final String btntext;

  const Helpbtn({super.key, required this.btnimage, required this.btntext});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenUtil().setWidth(175),
        height: ScreenUtil().setHeight(145),
        alignment: Alignment.center,
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(171, 171, 171, 0.25),
            offset: Offset(0, 0),
            spreadRadius: 0,
            blurRadius: 1,
          ),
          BoxShadow(
            color: Color.fromRGBO(255, 255, 255, 1),
            offset: Offset(0, 0),
            spreadRadius: 0,
            blurRadius: 0,
          ),
        ]),
        child: Expanded(
            child: TextButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      btnimage,
                      height: ScreenUtil().setWidth(55),
                      width: ScreenUtil().setWidth(55),
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(10),
                    ),
                    Text(
                      btntext,
                      style: TextStyle(
                          color: Pallete.textColor,
                          fontFamily: "Sen",
                          fontSize: ScreenUtil().setSp(21),
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ))));
  }
}
