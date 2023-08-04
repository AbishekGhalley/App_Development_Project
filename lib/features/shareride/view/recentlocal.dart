import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myekigai/features/shareride/view/content_model_favlocal.dart';
import 'package:myekigai/features/shareride/widget/TwoDots.dart';
import 'package:myekigai/reusables/TopAppbar.dart';
import 'package:myekigai/theme/pallete.dart';

class recentlocal extends StatelessWidget {
  const recentlocal({super.key});

  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(
    designSize: Size(420,910),
   builder: (context,child){
      return Scaffold(
        appBar: TopAppbar(toptitle: "Share Ride"),
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                child: Container(
                    width: double.infinity,
                    height: ScreenUtil().setHeight(100),
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        child: Row(children: [
                          SizedBox(
                            height: double.infinity,
                            child: TwoDots(),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pickup Location",
                                style: TextStyle(
                                    color: Pallete.textColor,
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Montserrat"),
                              ),
                              Divider(
                                color: Color.fromRGBO(171, 171, 171, 0.25),
                                thickness: 1,
                              ),
                              Text(
                                "Where to?",
                                style: TextStyle(
                                    color: Pallete.geryColor,
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Montserrat"),
                              )
                            ],
                          )
                        ])))),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.all( ScreenUtil().setWidth(25),),
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
    });
  }
}
