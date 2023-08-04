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
   return ScreenUtilInit(
     designSize: Size(420,910),
   builder: (context,child){
      return Scaffold(
        appBar: TopAppbar(toptitle: "Help"),
        body: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 25, bottom: 25),
              child: Column(
                children: [
                  Container(
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
                      child: Padding(
                        padding:  EdgeInsets.symmetric(
                            vertical: ScreenUtil().setHeight(17), horizontal: ScreenUtil().setWidth(17)),
                        child: Row(
                          children: [
                            Image.asset(HamAssets.bubblechat),
                            SizedBox(
                              width: ScreenUtil().setWidth(16),
                            ),
                          Text("Having a problem?",
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Sen")),
                            const Spacer(),
                            ElevatedButton(
                                onPressed: () {},
                                child:  Text("Help",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: ScreenUtil().setSp(16),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Sen")))
                          ],
                        ),
                      )),
                   SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  const Row(
                    children: [
                      Helpbtn(
                          btnimage: HamAssets.cashlesspayment,
                          btntext: "Payment"),
                      Spacer(),
                      Helpbtn(btnimage: HamAssets.share, btntext: "Services")
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  const Row(
                    children: [
                      Helpbtn(btnimage: HamAssets.error, btntext: "Technical"),
                      Spacer(),
                      Helpbtn(btnimage: HamAssets.private, btntext: "Privacy")
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(40),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                       Text(
                        'General Faqs',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(21),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Sen"),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(15),
                      ),
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
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
                                      icon: const Icon(
                                          Icons.keyboard_arrow_down_sharp))),
                              SizedBox(
                                height: ScreenUtil().setHeight(15),
                              ),
                              Divider(
                                height: 1,
                                thickness: 1,
                                color: Pallete.partitionlineColor,
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(15),
                              ),
                            ]);
                          })
                    ],
                  )
                ],
              ),
            )),
      );
    });
  }
}
