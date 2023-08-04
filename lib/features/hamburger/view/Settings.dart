import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/reusables/TopAppbar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(toptitle: "Setting"),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20),
                vertical: ScreenUtil().setHeight(8)),
            child: SizedBox(
              height: ScreenUtil().setHeight(60),
              child: ListTile(
                leading: Image.asset(HamAssets.language),
                title: Text(
                  'Language',
                  style: TextStyle(
                    color: Color(0xFF1C1C1C),
                    fontSize: ScreenUtil().setSp(21),
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(
                  'English',
                  style: TextStyle(
                    color: Color(0xFF9C9C9C),
                    fontSize: ScreenUtil().setSp(16),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20),
                vertical: ScreenUtil().setHeight(8)),
            child: SizedBox(
              height:  ScreenUtil().setHeight(60),
              child: ListTile(
                leading: Image.asset(HamAssets.lock),
                title: Text(
                  'Security',
                  style: TextStyle(
                    color: Color(0xFF1C1C1C),
                    fontSize: ScreenUtil().setSp(21),
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20),
                vertical: ScreenUtil().setHeight(8)),
            child: SizedBox(
              height:  ScreenUtil().setHeight(60),
              child: ListTile(
                leading: Image.asset(HamAssets.manstandingup),
                title: Text(
                  'Accessibility',
                  style: TextStyle(
                    color: Color(0xFF1C1C1C),
                    fontSize: ScreenUtil().setSp(21),
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20),
                vertical: ScreenUtil().setHeight(8)),
            child: SizedBox(
              height: ScreenUtil().setHeight(60),
              child: ListTile(
                leading: Image.asset(HamAssets.brightness),
                title: Text(
                  'Display',
                  style: TextStyle(
                    color: Color(0xFF1C1C1C),
                    fontSize: ScreenUtil().setSp(21),
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(
                  'Dark map',
                  style: TextStyle(
                    color: Color(0xFF9C9C9C),
                    fontSize:  ScreenUtil().setSp(16),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
            Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20),
                vertical: ScreenUtil().setHeight(8)),
            child: SizedBox(
                height:  ScreenUtil().setHeight(60),
              child: ListTile(
                leading: Image.asset(HamAssets.piechart),
                title: Row(
                  children: [
                    Text(
                      'Share Ride  ',
                      style: TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontSize: ScreenUtil().setSp(21),
                        fontFamily: 'Sen',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(
                      Icons.info_outline,
                      color: Colors.grey,
                      size:  ScreenUtil().setWidth(20),
                    ),
                  ],
                ),
                trailing: CupertinoSwitch(
                  // Use CupertinoSwitch instead of Switch
                  value: true,
                  onChanged: (value) {},
                  activeColor:
                      const Color(0xFFEFEFEF), // Specify the active color
                  trackColor:
                      const Color(0xFFEFEFEF), // Specify the track color
                ),
              ),
            ),
          ),
            Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20),
                vertical: ScreenUtil().setHeight(8)),
            child: SizedBox(
                height:  ScreenUtil().setHeight(60),
              child: ListTile(
                leading: Image.asset(HamAssets.checkmark),
                title: Text(
                  'Privacy',
                  style: TextStyle(
                    color: Color(0xFF1C1C1C),
                    fontSize: ScreenUtil().setSp(21),
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
            Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20),
                vertical: ScreenUtil().setHeight(8)),
            child: SizedBox(
                height:  ScreenUtil().setHeight(60),
              child: ListTile(
                leading: Image.asset(HamAssets.information),
                title: Text(
                  'About',
                  style: TextStyle(
                    color: Color(0xFF1C1C1C),
                    fontSize: ScreenUtil().setSp(21),
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
            Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20),
                vertical: ScreenUtil().setHeight(8)),
            child: SizedBox(
                height:  ScreenUtil().setHeight(60),
              child: ListTile(
                leading: Image.asset(HamAssets.hammer),
                title: Text(
                  'Legal',
                  style: TextStyle(
                    color: Color(0xFF1C1C1C),
                    fontSize: ScreenUtil().setSp(21),
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
