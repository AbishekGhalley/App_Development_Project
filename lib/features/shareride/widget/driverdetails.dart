import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/reusables/Navbar.dart';
import 'package:myekigai/features/homescreen/view/home_view.dart';
import 'package:myekigai/features/shareride/view/shareridemap.dart';
import 'package:myekigai/theme/pallete.dart';

class driverdetails extends StatefulWidget {
  const driverdetails({super.key});

  @override
  State<driverdetails> createState() => _driverdetailsState();
}

class _driverdetailsState extends State<driverdetails> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.68,
        maxChildSize:  0.68,
        minChildSize:  0.385,
        builder: (BuildContext context, ScrollController scrollController) {
          return Align(
              alignment: Alignment.topCenter,
              child:Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                color: Colors.white,
              ),
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(30),vertical:  ScreenUtil().setHeight(15)),
              child: Expanded(
                  child:ListView(
                padding: EdgeInsets.all(0),
                controller:scrollController,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: ScreenUtil().setHeight(3),
                          width: 1,
                          color: Colors.white,
                        ),
                        Container(
                          height: ScreenUtil().setHeight(3),
                          width: 66,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.5),
                            color: const Color.fromRGBO(225, 225, 225, 1),
                          ),
                        ),
                        Container(
                          height: ScreenUtil().setHeight(3),
                          width: 1,
                          color: Colors.white,
                        ),
                      ]),
                  SizedBox(
                    height:  ScreenUtil().setHeight(25),
                  ),
                  Text(
                    'Driver Details',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(21),
                        fontFamily: "Sen",
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height:ScreenUtil().setWidth(8),
                  ),
                  Row(
                    children: [
                      Container(
                        width: ScreenUtil().setWidth(90),
                        height: ScreenUtil().setWidth(90),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(ShareRideAssets.andummyimage),
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                     Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Manish Bara",
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(21),
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "UP-06-JS-82093",
                            style: TextStyle(
                                color: Pallete.geryColor,
                                fontSize: ScreenUtil().setSp(16),
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Ather 450X",
                            style: TextStyle(
                                color: Pallete.primaryColor,
                                fontSize: ScreenUtil().setSp(16),
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: ScreenUtil().setWidth(65),
                            height: ScreenUtil().setWidth(65),
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
                            alignment: Alignment.center,
                            child:  Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "09",
                                    style: TextStyle(
                                        fontSize: ScreenUtil().setSp(21),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Montserrat"),
                                  ),
                                  Text("min",
                                      style: TextStyle(
                                         fontSize: ScreenUtil().setSp(12),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Montserrat"))
                                ]),
                          ),
                         Text("Pick-up",
                              style: TextStyle(
                                 fontSize: ScreenUtil().setSp(12),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Montserrat"))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    Container(
                        height: ScreenUtil().setHeight(50),
                        width: ScreenUtil().setWidth(300),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
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
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Write a message",
                              hintStyle: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                 fontSize: ScreenUtil().setSp(12))),
                        )),
                    const Spacer(),
                    Container(
                      height: ScreenUtil().setWidth(28),
                      width: ScreenUtil().setWidth(28),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ShareRideAssets.antelephone))),
                    )
                  ]),
                   SizedBox(
                    height: ScreenUtil().setHeight(12),
                  ),
                   Row(
                    children: [
                      Text(
                        "Pick-up time",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        "11:05 am",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Expected drop-off time",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        "11:45 am",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                 SizedBox(
                    height:  ScreenUtil().setHeight(12),
                  ),
                  const Divider(
                    color: Pallete.partitionlineColor,
                    thickness: 1,
                    height: 1,
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(15),
                  ),
                 Row(
                    children: [
                      Text(
                        "Destination",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        "IIF,DTU",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(15),
                  ),
                  Row(
                    children: [
                      Text(
                        "Total Fare",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        "₹ 140",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height:ScreenUtil().setHeight(15),
                  ),
                  Row(
                    children: [
                       Text(
                        "Share Trip Status",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child:  Text(
                            "Share",
                            style: TextStyle(
                                color: Pallete.primaryColor,
                                fontSize: ScreenUtil().setSp(16),
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(25),
                  ),
                  const Spacer(),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(229, 33, 68, 1),
                        ),
                        borderRadius: BorderRadius.circular(6)),
                    child: TextButton(
                      style: const ButtonStyle(
                          splashFactory: NoSplash.splashFactory),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Text("Cancle",
                          style: TextStyle(
                              color: Color.fromRGBO(229, 33, 68, 1),
                              fontSize: ScreenUtil().setSp(21),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Sen")),
                    ),
                  )
                ],
              ))));
        });
  }
}
