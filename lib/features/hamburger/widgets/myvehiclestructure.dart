import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class vehiclestructure extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagepath;
  final String? time;
  const vehiclestructure(
      {super.key,
      this.time,
      required this.title,
      required this.imagepath,
      required this.subtitle});
  @override
  Widget build(BuildContext context) {
    bool istime = false;
    if (time != null) {
      istime = true;
    }
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.0),
            boxShadow: const [
              BoxShadow(
                color: Color(0x3FABABAB),
                spreadRadius: 0,
                blurRadius: 4,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: ScreenUtil().setHeight(10),
                      horizontal: ScreenUtil().setWidth(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Color(0xFF1C1C1C),
                          fontSize: ScreenUtil().setSp(21),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: ScreenUtil().setSp(16),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(15),
                      ),
                      Container(
                          child: istime
                              ? Column(children: [
                                  Text(
                                    'Last visit to an eKIZone',
                                    style: TextStyle(
                                      color: Color(0xFF9C9C9C),
                                      fontSize: ScreenUtil().setSp(12),
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    time!,
                                    style: TextStyle(
                                      color: Color(0xFF9C9C9C),
                                      fontSize: ScreenUtil().setSp(12),
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ])
                              : Column(
                                  children: [
                                    Text(
                                      'Not visited an eKIZone yet',
                                      style: TextStyle(
                                        color: Color(0xFF9C9C9C),
                                        fontSize: ScreenUtil().setSp(12),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(16)),
                  child: Image.asset(
                    imagepath,
                    //fit: BoxFit.cover,
                    height: ScreenUtil().setHeight(156),
                    width: ScreenUtil().setWidth(169),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: ScreenUtil().setHeight(20),
      )
    ]);
  }
}
