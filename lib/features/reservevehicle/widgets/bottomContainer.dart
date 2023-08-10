import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/reservevehicle/View/vehicleListView.dart';
import 'package:myekigai/features/reservevehicle/widgets/rowitem.dart';
import 'package:myekigai/reusables/ControllerDrawer.dart';
import 'package:myekigai/reusables/btn.dart';

import '../../../theme/pallete.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({super.key});

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (!isButtonPressed) // Show BottomWidget initially
          Positioned(
            bottom: 0,
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // First element: Icon with text
                        Expanded(
                          child: RowItem(
                            // refer Rowitem in widgets
                            imagePath: ReserveVehicleAssets.iicon,
                            text:
                                'Choose the preferred eKI-zone to reserve your vehicle.',
                            onPressed: () {
                              // Implement your onPressed action here
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    CustomButton(
                      text: "Continue",
                      onPressed: () {
                        setState(() {
                          // Implement your onPressed action here
                          isButtonPressed = true;
                        });
                      },
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: ScreenUtil().setHeight(16),
                    )
                  ],
                )),
          ),
        if (isButtonPressed) // Show BottomWidget2 after pressing "Continue"
          const Positioned(
            child: BottomWidget2(),
          ),
      ],
    );
  }
}

class BottomWidget2 extends StatelessWidget {
  const BottomWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
              height: ScreenUtil().setHeight(300),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(20),
                      ),
                      Text('Station Details',
                          style: GoogleFonts.sen(
                            color: Pallete.textColor,
                            fontWeight: FontWeight.w400,
                            fontSize: ScreenUtil().setSp(20),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset(ReserveVehicleAssets.iicon))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(24)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                            width: ScreenUtil().setWidth(180),
                            height: ScreenUtil().setHeight(120),
                            fit: BoxFit.contain,
                            image:
                                AssetImage(ReserveVehicleAssets.stationImage)),
                        Column(
                          //right column with texts starting sector 19
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Sector 19',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.montserrat(
                                  color: Pallete.textColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: ScreenUtil().setSp(20),
                                )),
                            Text(
                              'Open 24 hrs',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.montserrat(
                                color: const Color.fromRGBO(9, 171, 229, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: ScreenUtil().setSp(12),
                              ),
                            ),
                            Text('3 km',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.montserrat(
                                  color: Pallete.textColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: ScreenUtil().setSp(16),
                                )),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    SvgPicture.asset(
                                      ReserveVehicleAssets
                                          .imheart, // Replace with your SVG asset path
                                      height: ScreenUtil().setHeight(
                                          22), // Set the height of the SVG
                                      // Set the width of the SVG
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: ScreenUtil().setWidth(10),
                                ),
                                SvgPicture.asset(
                                  ReserveVehicleAssets
                                      .imshareInReserveVehicle, // Replace with your SVG asset path
                                  height: ScreenUtil().setHeight(
                                      24), // Set the height of the SVG
                                  // Set the width of the SVG
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomButton(
                    text: "Continue",
                    onPressed: () {
                      Get.delete<ControllerDrawer>();
                      Get.to(() => VehicleListView(),
                          transition: Transition.rightToLeft,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear);
                    },
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
