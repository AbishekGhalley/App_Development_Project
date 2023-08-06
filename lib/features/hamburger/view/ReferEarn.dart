import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myekigai/features/hamburger/view/content_model_referearn.dart';
import 'package:myekigai/reusables/TopAppbar.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/theme/pallete.dart';

class ReferEarn extends StatelessWidget {
  const ReferEarn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopAppbar(toptitle: "Refer & Earn"),
        body: SizedBox(
            height: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(20),
                  right: ScreenUtil().setWidth(20),
                  top: ScreenUtil().setHeight(25)),
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
                        padding: EdgeInsets.symmetric(
                            vertical: ScreenUtil().setHeight(17),
                            horizontal: ScreenUtil().setWidth(13)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(HamAssets.giftcard),
                            Text("Invite Friends to MYeKIGAI",
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Sen")),
                            GestureDetector(
                                onTap: () {},
                                child: Text("Invite",
                                    style: TextStyle(
                                        color: Pallete.primaryColor,
                                        fontSize: ScreenUtil().setSp(16),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Sen")))
                          ],
                        ),
                      )),
                  SizedBox(
                    height: ScreenUtil().setHeight(25),
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: ScreenUtil().setHeight(270),
                      child: Container(
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
                          padding: EdgeInsets.only(
                              left: ScreenUtil().setWidth(12),  right: ScreenUtil().setWidth(12),bottom: ScreenUtil().setHeight(15),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "How it works?",
                                    style: TextStyle(
                                        fontSize: ScreenUtil().setSp(16),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Montserrat"),
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "T&Cs",
                                        style: TextStyle(
                                            color: Pallete.primaryColor,
                                            fontSize: ScreenUtil().setSp(16),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Montserrat"),
                                      ))
                                ],
                              ),
                              const Divider(
                                color: Pallete.partitionlineColor,
                                height: 1,
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(17),
                              ),
                              Expanded(
                                  child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: questions.length,
                                itemBuilder: (BuildContext context, int index) {
                                  int x = index + 1;
                                  return Column(children: [
                                    Row(children: [
                                      DottedBorder(
                                        color: Pallete.primaryColor,
                                        strokeWidth: 1,
                                        child: Container(
                                            alignment: Alignment.center,
                                            width: ScreenUtil().setWidth(37),
                                            height: ScreenUtil().setWidth(37),
                                            child: Text(
                                              "$x",
                                              style: TextStyle(
                                                  fontSize:
                                                      ScreenUtil().setSp(27),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Sen"),
                                            )),
                                      ),
                                      SizedBox(
                                        width: ScreenUtil().setWidth(22),
                                      ),
                                      SizedBox(
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                questions[index].text,
                                                style: TextStyle(
                                                    fontSize:
                                                        ScreenUtil().setSp(15),
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: "Montserrat"),
                                              ),
                                              Text(
                                                questions[index].smalltext,
                                                style: TextStyle(
                                                    color: Pallete.geryColor,
                                                    fontSize:
                                                        ScreenUtil().setSp(12),
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "Montserrat"),
                                              )
                                            ]),
                                      ),
                                      const Spacer(),
                                      Container(
                                        width: ScreenUtil().setWidth(68),
                                        height: ScreenUtil().setHeight(50),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    questions[index].image),
                                                fit: BoxFit.cover)),
                                      ),
                                    ]),
                                    SizedBox(
                                      height: ScreenUtil().setHeight(20),
                                    )
                                  ]);
                                },
                              )),
                            ],
                          ),
                        ),
                      )),
                  SizedBox(
                    height: ScreenUtil().setHeight(25),
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemCount: askedquestions.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(children: [
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
                              padding: EdgeInsets.symmetric(
                                  horizontal:  ScreenUtil().setWidth(12), vertical:  ScreenUtil().setHeight(10)),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                Image.asset(HamAssets.faq),
                                SizedBox(
                                  width: ScreenUtil().setWidth(20),
                                ),
                                Text(
                                  askedquestions[index].question,
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setSp(14),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Montserrat"),
                                ),
                                const Spacer(),
                                IconButton(
                                  icon: const Icon(
                                      Icons.keyboard_arrow_down_sharp),
                                  onPressed: () {},
                                ),
                              ])),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(15),
                        )
                      ]);
                    },
                  ))
                ],
              ),
            )));
  }
}
