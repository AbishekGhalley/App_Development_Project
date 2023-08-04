import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myekigai/Authentication_repo/authentication.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/hamburger/view/Myvehicles.dart';
import 'package:myekigai/features/hamburger/view/Notification.dart';
import 'package:myekigai/features/hamburger/view/Profile.dart';
import 'package:myekigai/features/hamburger/view/ReferEarn.dart';
import 'package:myekigai/features/hamburger/view/RideHistory.dart';
import 'package:myekigai/features/hamburger/view/Settings.dart';
import 'package:myekigai/features/hamburger/view/Wallet.dart';
import 'package:myekigai/features/hamburger/view/help.dart';

class Navbar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const Navbar({Key? key,required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: double.infinity,
              height: ScreenUtil().setHeight(260),
              padding: EdgeInsets.only(top: ScreenUtil().setHeight(50) ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: ScreenUtil().setHeight(95),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(HamAssets.db),
                        ),
                      ),
                    ),
                    Text(
                      "Devesh",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: ScreenUtil().setSp(27),
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child:  Text(
                            "View Profile   ",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.lightBlue,
                              fontSize:ScreenUtil().setSp(16),
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          onTap: () {
                         Get.to(()=>Profile());
                          },
                        ),
                        Container(
                            height: ScreenUtil().setHeight(30),
                            width: ScreenUtil().setWidth(45),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5)),
                            child:  Align(
                              alignment: Alignment.center,
                              child: Text('New',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: ScreenUtil().setSp(13),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Montserrat',
                                  )),
                            )),
                      ],
                    ),
                    SizedBox(height: ScreenUtil().setHeight(11)),
                    const Divider(
                      color: Color(0xFFE6E6E6),
                      thickness: 1,
                      height: 1,
                    ),
                  ])),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                ListTile(
                  leading: Image.asset(GlobalAssets.card),
                  title: Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(21),
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  onTap: () {
                    Get.to(()=>Wallet());
                  },
                ),
                ListTile(
                  leading: Image.asset(GlobalAssets.motorbike),
                  title: Text(
                    'My Vehicles',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(21),
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  onTap: () {
                    Get.to(()=>MyVehicles());
                  },
                ),
                ListTile(
                  leading: Image.asset(GlobalAssets.history),
                  title: Text(
                    'Ride History',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(21),
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  onTap: () {
                    Get.to(()=>RideHistory());
                  },
                ),
                ListTile(
                    leading: Image.asset(GlobalAssets.notification),
                    title: Text(
                      'Notifications',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: ScreenUtil().setSp(21),
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    onTap: () {
                      Get.to(()=>NotificationScreen());
                    }),
                ListTile(
                  leading: Image.asset(GlobalAssets.star),
                  title: Text(
                    'Rewards',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(21),
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  onTap: () {
                    Get.to(()=>ReferEarn());
                  },
                ),
                ListTile(
                  leading: Image.asset(GlobalAssets.heart),
                  title: Text(
                    'Favourite',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(21),
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                    leading: Image.asset(GlobalAssets.help),
                    title: Text(
                      'Help',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: ScreenUtil().setSp(21),
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    onTap: () {
                      Get.to(()=>Help());
                    }),
                ListTile(
                    leading: Image.asset(GlobalAssets.setting),
                    title: Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: ScreenUtil().setSp(21),
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    onTap: () {
                      Get.to(()=>Settings());
                    }),
                const Divider(color: Color(0xFFE6E6E6), thickness: 1),
                ListTile(
                  leading: Image.asset(GlobalAssets.steeringwheel),
                  title: Text(
                    'Be a Buddy',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(21),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(GlobalAssets.steeringwheel),
                  title: Text(
                    'Sign Out',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(21),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    Authentication.instance.logout();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
