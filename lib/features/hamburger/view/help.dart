import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myekigai/features/hamburger/view/content_model_help.dart';
import 'package:myekigai/features/hamburger/widgets/help_btn.dart';
import 'package:myekigai/reusables/TopAppbar.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/theme/theme.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(toptitle: "Help"),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: ScreenUtil().setHeight(10),
                horizontal: ScreenUtil().setWidth(20)),
            child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil().setHeight(15),
                    horizontal: ScreenUtil().setWidth(20)),
                width: double.infinity,
                height: ScreenUtil().setHeight(70),
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
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        HamAssets.bubblechat,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text("Having a problem?",
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(16),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Sen")),
                    ),
                    Expanded(
                      flex: 0,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Help",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(16),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Sen"))),
                    )
                  ],
                )),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setHeight(5),
                  horizontal: ScreenUtil().setWidth(20)),
              child: const Row(
                children: [
                  Helpbtn(
                      btnimage: HamAssets.cashlesspayment, btntext: "Payment"),
                  Spacer(),
                  Helpbtn(btnimage: HamAssets.share, btntext: "Services")
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setHeight(5),
                  horizontal: ScreenUtil().setWidth(20)),
              child: const Row(
                children: [
                  Helpbtn(btnimage: HamAssets.error, btntext: "Technical"),
                  Spacer(),
                  Helpbtn(btnimage: HamAssets.private, btntext: "Privacy")
                ],
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setHeight(5),
                  horizontal: ScreenUtil().setWidth(20)),
              child: Text(
                'General Faqs',
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(21),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Sen"),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: ListView.builder(
                  padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(20),
                      right: ScreenUtil().setWidth(20),
                      top: 0,
                      bottom: ScreenUtil().setHeight(25)),
                  itemCount: faqs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(children: [
                      ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            faqs[index].questions,
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(16),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Montserrat"),
                          ),
                          trailing: IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.keyboard_arrow_down_sharp))),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: Pallete.partitionlineColor,
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                    ]);
                  }))
        ],
      ),
    );
  }
}
