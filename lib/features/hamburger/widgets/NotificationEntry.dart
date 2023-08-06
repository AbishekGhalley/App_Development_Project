import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationEntry extends StatelessWidget {
  final String title;
  final String description;
  final String? subDescription;
  final String imagePath;
  const NotificationEntry({Key? key,required this.imagePath,this.subDescription, required this.description,required this.title}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(15),vertical: ScreenUtil().setHeight(15)),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
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
                padding:  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(16),vertical: ScreenUtil().setHeight(16)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontSize: ScreenUtil().setSp(16),
                        fontFamily: 'Sen',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  SizedBox(height:ScreenUtil().setHeight(4),),
                    Text(
                      description,
                      style: TextStyle(
                        color: Color(0xFF9C9C9C),
                        fontSize: ScreenUtil().setSp(16),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (subDescription != null)SizedBox(height: ScreenUtil().setHeight(4),),
                    if (subDescription != null) Text(
                      subDescription!,
                      style: TextStyle(
                        color: Color(0xFF9C9C9C),
                        fontSize: ScreenUtil().setSp(16),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all( ScreenUtil().setWidth(16)),
                child: Image.asset(
                  imagePath,
                  height: ScreenUtil().setWidth(120),
                  width:  ScreenUtil().setWidth(120),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
