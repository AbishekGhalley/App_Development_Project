import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myekigai/reusables/TopAppbar.dart';
import '../../../theme/pallete.dart';
import '../../hamburger/widgets/TwoDots.dart';
import '../../shareride/view/content_model_favlocal.dart';

class Buddy extends StatelessWidget {
  Buddy({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(toptitle: "Get a Buddy "),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(25),
                left: ScreenUtil().setWidth(25),
                right: ScreenUtil().setWidth(25)),
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: (MediaQuery.of(context).size.height * 0.12),
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(171, 171, 171, 0.25),
                    offset: Offset(0, 0),
                    spreadRadius: 2,
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
                      vertical: ScreenUtil().setHeight(15),
                      horizontal: ScreenUtil().setWidth(10)),
                  child: Row(
                    children: [
                      SizedBox(
                        height: double.infinity,
                        child: TwoDots(),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pickup Location",
                              style: TextStyle(
                                  color: Pallete.textColor,
                                  fontSize: ScreenUtil().setSp(15),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Montserrat"),
                            ),
                            Divider(
                              color: Color.fromRGBO(171, 171, 171, 0.25),
                              thickness: 2,
                            ),
                            Text(
                              "Where to?",
                              style: TextStyle(
                                  color: Pallete.geryColor,
                                  fontSize: ScreenUtil().setSp(16),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Montserrat"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(25),
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: Text(
                  "Recent Locations",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: ScreenUtil().setSp(20),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Montserrat"),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(25),
                    vertical: ScreenUtil().setHeight(25)),
                itemCount: locals.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: const Icon(Icons.location_on_outlined),
                    title: Text(
                      locals[index].location,
                      style: TextStyle(
                          color: Pallete.textColor,
                          fontSize: ScreenUtil().setSp(16),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat"),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
