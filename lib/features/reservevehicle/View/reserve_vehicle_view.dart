import 'package:flutter/material.dart';
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

  void _toggleWidgetVisibility() {
    setState(() {
      isVisible = !isVisible; // Toggle the boolean variable
    });
  }

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
                top: MediaQuery.of(context).padding.top + 8,
                left: 20,
                right: 20,
                child: CustomSearchBar(),
              ),
              Positioned(
                bottom: locatehieght,
                right: 16,
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
                      height: 36, // Set the height of the SVG
                      width: 36, // Set the width of the SVG
                    ),
                  ],
                ),
              ),
              if (isVisible)
                const Positioned(
                    bottom: 300,
                    right: 20,
                    child: Locator(
                      avalaibility: ReserveVehicleAssets.imavlRed,
                      onPressed: null,
                    )),
              if (isVisible)
                const Positioned(
                    top: 200,
                    right: 50,
                    child: Locator(
                      avalaibility: ReserveVehicleAssets.imavlYellow,
                      onPressed: null,
                    )),
              if (isVisible)
                const Positioned(
                    bottom: 400,
                    left: 20,
                    child: Locator(
                      avalaibility: ReserveVehicleAssets.imavlGreen,
                      onPressed: null,
                    )),
              if (isVisible)
                const Positioned(
                    bottom: 200,
                    left: 70,
                    child: Locator(
                      avalaibility: ReserveVehicleAssets.imavlYellow,
                      onPressed: null,
                    )),
              if (isVisible)
                Positioned(
                    top: 160,
                    left: 110,
                    child: Locator(
                      avalaibility: ReserveVehicleAssets.imavlGreen,
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                          locatehieght = 280; // Toggle the boolean variable
                        });
                      },
                    )),
              if (!isVisible)
                Positioned(
                    top: 145,
                    left: 110,
                    child: LargeLocator(
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                          locatehieght = 160; // Toggle the boolean variable
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
