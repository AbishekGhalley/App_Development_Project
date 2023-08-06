import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/reusables/TopAppbar.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/theme/pallete.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopAppbar(toptitle: "Wallet"),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: ScreenUtil().setHeight(155),
              decoration: const BoxDecoration(
                color: Color(0xFFD6FDCC),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3FABABAB),
                    blurRadius: 4,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Current Wallet Balance',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Pallete.textColor,
                      fontSize: ScreenUtil().setSp(16),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '₹390',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Pallete.textColor,
                      fontSize: ScreenUtil().setSp(36),
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Container(
              margin:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(25)),
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
              child: ListTile(
                leading: Image.asset(HamAssets.flash),
                title: Row(
                  children: [
                    Text(
                      '20 eKIbits  ',
                      style: TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontSize: ScreenUtil().setSp(16),
                        fontFamily: 'Sen',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(
                      Icons.info_outline,
                      color: Colors.grey,
                      size: ScreenUtil().setWidth(20),
                    ),
                  ],
                ),
                trailing: Text(
                  'Convert',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF066AE0),
                    fontSize: ScreenUtil().setSp(16),
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Container(
              margin:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(25)),
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
              child: ListTile(
                leading: Image.asset(HamAssets.transaction),
                title: Text(
                  'Transaction History',
                  style: TextStyle(
                    color: Color(0xFF1C1C1C),
                    fontSize: ScreenUtil().setSp(16),
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
            ),
            const Spacer(),
            Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 20, top: 20),
                child: CustomButton(text: "Add Money", onPressed: () {}))
          ],
        ));
  }
}
