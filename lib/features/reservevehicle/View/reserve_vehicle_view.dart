import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/reservevehicle/widgets/bottomContainer.dart';
import 'package:myekigai/features/reservevehicle/widgets/largeLocator.dart';
import 'package:myekigai/features/reservevehicle/widgets/locator.dart';
import 'package:myekigai/reusables/ControllerDrawer.dart';
import 'package:myekigai/reusables/Navbar.dart';
import '../../../reusables/searchbar.dart';

class ReserveVehicle extends StatefulWidget {
  const ReserveVehicle({super.key});

  @override
  State<ReserveVehicle> createState() => _ReserveVehicleState();
}

class _ReserveVehicleState extends State<ReserveVehicle> {
  bool isVisible = true;
  double locatehieght = 160;


  @override
  Widget build(BuildContext context) {
    final ControllerDrawer drawercontroller = Get.put(ControllerDrawer());
    return Scaffold(
      backgroundColor: Colors.black,
      key: drawercontroller.scaffoldkey.value,
      drawer: Navbar(scaffoldKey: drawercontroller.scaffoldkey.value),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Image.asset(
                GlobalAssets.imMap,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top +
                    ScreenUtil().setHeight(15),
                left: ScreenUtil().setWidth(20),
                right: ScreenUtil().setWidth(20),
                child: CustomSearchBar(
                ),
              ),
              Positioned(
                bottom: locatehieght,
                right: ScreenUtil().setWidth(16),
                child: Column(
                  children: [
                    IconButton(
                      icon: Image.asset(GlobalAssets.locate),
                      onPressed: () {
                        // Handle favorite icon press
                      },
                    ),
                    SvgPicture.asset(
                      GlobalAssets
                          .imekizone, // Replace with your SVG asset path
                      height:  ScreenUtil().setWidth(36), // Set the height of the SVG
                      width: ScreenUtil().setWidth(36), // Set the width of the SVG
                    ),
                  ],
                ),
              ),
              if (isVisible)
                 Positioned(
                    bottom: ScreenUtil().setHeight(350),
                    right: ScreenUtil().setWidth(50),
                    child: Locator(
                      avalaibility: ReserveVehicleAssets.imavlRed,
                      onPressed: null,
                    )),
              if (isVisible)
                 Positioned(
                    top: ScreenUtil().setHeight(250),
                    right: ScreenUtil().setWidth(50),
                    child: Locator(
                      avalaibility: ReserveVehicleAssets.imavlYellow,
                      onPressed: null,
                    )),
              if (isVisible)
                Positioned(
                    bottom: ScreenUtil().setHeight(400),
                    left: ScreenUtil().setWidth(20),
                    child: Locator(
                      avalaibility: ReserveVehicleAssets.imavlGreen,
                      onPressed: null,
                    )),
              if (isVisible)
                 Positioned(
                    bottom: ScreenUtil().setHeight(230),
                    left: ScreenUtil().setWidth(70),
                    child: Locator(
                      avalaibility: ReserveVehicleAssets.imavlYellow,
                      onPressed: null,
                    )),
              if (isVisible)
                Positioned(
                    top: ScreenUtil().setHeight(160),
                    left: ScreenUtil().setWidth(110),
                    child: Locator(
                      avalaibility: ReserveVehicleAssets.imavlGreen,
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                          locatehieght = ScreenUtil().setHeight(280); // Toggle the boolean variable
                        });
                      },
                    )),
              if (!isVisible)
                Positioned(
                    top: ScreenUtil().setHeight(145),
                    left: ScreenUtil().setWidth(110),
                    child: LargeLocator(
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                          locatehieght = ScreenUtil().setWidth(160); // Toggle the boolean variable
                        });
                      },
                    )),
              const BottomWidget()
            ],
          ),
        ),
      ),
    );
  }
}
