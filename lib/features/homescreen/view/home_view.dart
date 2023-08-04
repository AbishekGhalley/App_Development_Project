import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/SwapBatteries/view/swapBatteries.dart';
import 'package:myekigai/features/homescreen/widget/ServiceIconWithText.dart';
import 'package:myekigai/features/reservevehicle/View/reserve_vehicle_view.dart';
import 'package:myekigai/features/scanandgo/view/ScanQR.dart';
import 'package:myekigai/features/shareride/view/shareridemap.dart';
import 'package:myekigai/features/supercharge/view/vehicledetailssupercharge.dart';
import 'package:myekigai/reusables/Navbar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:myekigai/reusables/key_navbar.dart';
import '../../../theme/pallete.dart';
import '../widget/searchbar.dart';

class HomeScreen extends StatefulWidget {
  static route() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const HomeScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    );
  }

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(420, 910),
        builder: (context, child) {
          return Scaffold(
            key: global_navbar.homescaffoldKey,
            drawer: Navbar(
              scaffoldKey: global_navbar.homescaffoldKey,
            ),
            backgroundColor: Colors.black,
            body: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Image.asset(
                      // Map must be added here
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
                        scaffoldKey: global_navbar.homescaffoldKey,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                right: ScreenUtil().setWidth(16),
                                bottom: ScreenUtil().setHeight(30)),
                            child: Column(
                              children: [
                                IconButton(
                                  icon: Image.asset(GlobalAssets.locate),
                                  onPressed: () {
                                    // Handle favorite icon press
                                  },
                                ),
                                SvgPicture.asset(
                                  GlobalAssets.imekizone,
                                  // Replace with your SVG asset path
                                  height: ScreenUtil().setWidth(
                                      36), // Set the height of the SVG
                                  width: ScreenUtil()
                                      .setWidth(36), // Set the width of the SVG
                                ),
                              ],
                            ),
                          ),
                          SlidingUpPanel(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 3.0,
                                  spreadRadius: 2.0,
                                  offset: const Offset(0,
                                      2), // Defines the position of the shadow
                                ),
                              ],
                              minHeight: ScreenUtil().setHeight(180),
                              maxHeight: ScreenUtil().setHeight(300),
                              panel: Container(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: ScreenUtil().setWidth(20)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                            top: ScreenUtil().setHeight(12),
                                          ),
                                          height: ScreenUtil().setHeight(4),
                                          width: 66,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(3)),
                                            color: Pallete.textColor,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Services',
                                        style: GoogleFonts.sen(
                                          color: Pallete.textColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: ScreenUtil().setSp(23),
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ServiceIconWithText(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ScanQR()));
                                              },
                                              icon: HomeAssets.imhomescango,
                                              text: 'Scan & Go'),
                                          ServiceIconWithText(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const ReserveVehicle()));
                                              },
                                              icon: HomeAssets.imreserveVehicle,
                                              text: 'Reservation'),
                                          ServiceIconWithText(
                                              onPressed: () {},
                                              icon: HomeAssets.imbuddy,
                                              text: 'Get a Buddy')
                                        ],
                                      ),
                                      Spacer(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ServiceIconWithText(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            swapbatteries()));
                                              },
                                              icon: HomeAssets.imswapbattery,
                                              text: 'Swap Battery'),
                                          ServiceIconWithText(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            details_supercharge()));
                                              },
                                              icon: HomeAssets.imsupercharge,
                                              text: 'Supercharge'),
                                          ServiceIconWithText(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            shareridemap()));
                                              },
                                              icon: HomeAssets.imshareRide,
                                              text: 'Share Ride')
                                        ],
                                      ),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
