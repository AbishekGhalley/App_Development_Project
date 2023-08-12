import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/SwapBatteries/view/swapBatteries.dart';
import 'package:myekigai/features/getabuddy/view/get_a_buddy.dart';
import 'package:myekigai/features/getabuddy/widgets/buddy_card.dart';
import 'package:myekigai/features/homescreen/widget/ServiceIconWithText.dart';
import 'package:myekigai/features/reservevehicle/View/reserve_vehicle_view.dart';
import 'package:myekigai/features/scanandgo/view/ScanQRProper.dart';
import 'package:myekigai/features/shareride/view/shareridemap.dart';
import 'package:myekigai/features/supercharge/view/vehicledetailssupercharge.dart';
import 'package:myekigai/reusables/ControllerDrawer.dart';
import 'package:myekigai/reusables/Navbar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../../reusables/btn.dart';
import '../../../reusables/popupWidget.dart';
import '../../../theme/pallete.dart';
import '../../../reusables/searchbar.dart';

class BuddyVehicle extends StatefulWidget {
  const BuddyVehicle({super.key});
  @override
  State<BuddyVehicle> createState() => _BuddyVehicleState();
}

class _BuddyVehicleState extends State<BuddyVehicle> {
  bool isdetails = false;
  bool isvisible = false;
  double posbottom = 180;
  void updateisdetails(bool sdetails) {
    setState(() {
      isdetails = sdetails;
    });
    setState(() {
      posbottom = 330;
    });
    setState(() {
      isvisible = !isvisible;
    });
  }
  final ControllerDrawer controllerDrawer = Get.put(ControllerDrawer());
  @override
  Widget build(BuildContext context) {
    final ControllerDrawer controllerDrawer = Get.put(ControllerDrawer());
    return Scaffold(
      drawer: Navbar(
        scaffoldKey: controllerDrawer.scaffoldkey.value,
      ),
      key: controllerDrawer.scaffoldkey.value,
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body:
          // Align(
          // alignment: Alignment.topCenter,
          // child: Container(
          // height: MediaQuery.of(context).size.height,
          // child:
          Stack(
        children: [
          Image.asset(
            // Map must be added here
            GlobalAssets.imMap,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top:
                MediaQuery.of(context).padding.top + ScreenUtil().setHeight(15),
            left: ScreenUtil().setWidth(20),
            right: ScreenUtil().setWidth(20),
            child: CustomSearchBar(),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SlidingUpPanel(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 3.0,
                        spreadRadius: 2.0,
                        offset: const Offset(
                            0, 2), // Defines the position of the shadow
                      ),
                    ],
                    minHeight: ScreenUtil().setHeight(400),
                    maxHeight: ScreenUtil().setHeight(400),
                    panel: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ListView(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: ScreenUtil().setHeight(10),
                                  bottom: 0,
                                  left: ScreenUtil().setWidth(30),
                                  right: ScreenUtil().setWidth(30)),
                              child: Text(
                                'Choose a buddy of your choice for the trip',
                                style: GoogleFonts.sen(
                                  color: Pallete.geryColor,
                                  fontSize: ScreenUtil().setSp(15),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            BuddyCard(
                              image: ReserveVehicleAssets.imsrix,
                              drivername: 'Victor Rathi',
                              brand: 'Ampere S5',
                              minuite: '07',
                            ),
                            const BuddyCard(
                                image: ReserveVehicleAssets.imunzart,
                                drivername: 'Manish Bara',
                                brand: 'Ather 450x',
                                minuite: '09'),
                            const BuddyCard(
                                image: ReserveVehicleAssets.imunzart,
                                drivername: 'Reva Gandhi',
                                brand: 'Ather',
                                minuite: '₹20/hr'),
                            BuddyCard(
                              image: ReserveVehicleAssets.imunzart,
                              drivername: 'Victor Rathi',
                              brand: 'Ampere S3',
                              minuite: '14',
                              onPressed: () {},
                            ),
                          ]),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 10, top: 10),
                          decoration: const BoxDecoration(
                            color: Pallete.btnTextColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey, // Shadow color
                                offset: Offset(
                                    0, 2), // Offset in the x, y direction
                                blurRadius: 2, // Spread radius of the shadow
                                spreadRadius:
                                    2, // The size of the shadow relative to the box (positive value increases the size, negative value reduces it)
                              ),
                            ],
                          ),
                          child: CustomButton(
                              text: 'Continue',
                              onPressed: () {
                                showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(16.0),
                                    ),
                                  ),
                                  context: context,
                                  builder: (BuildContext context) =>
                                      PopupWidget(
                                    onReturnTap: () {
                                      Get.back();
                                    },
                                    btnText: 'Confirm',
                                    returnText: 'No, Return',
                                    titleText: 'Ready to begin?',
                                  ),
                                );
                              }),
                        )
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
    // ),
  }
}
