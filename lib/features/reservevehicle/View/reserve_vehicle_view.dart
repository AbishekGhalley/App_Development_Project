import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/reservevehicle/widgets/bottomContainer.dart';
import 'package:myekigai/features/reservevehicle/widgets/largeLocator.dart';
import 'package:myekigai/features/reservevehicle/widgets/locator.dart';
import 'package:myekigai/reusables/Navbar.dart';
import 'package:myekigai/reusables/key_navbar.dart';
import '../widgets/searchbar.dart';


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
    return Scaffold(
      backgroundColor: Colors.black,
      key: global_navbar.reservescaffoldKey,
      drawer: Navbar(scaffoldKey: global_navbar.reservescaffoldKey),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Image.asset(
                'assets/pngs/map.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top + 8,
                left: 20,
                right: 20,
                child: CustomSearchBar(scaffoldKey: global_navbar.reservescaffoldKey),
              ),
              Positioned(
                bottom: locatehieght,
                right: 16,
                child: Column(
                  children: [
                    IconButton(
                      icon: Image.asset(AssetsConstants.locate),
                      onPressed: () {
                        // Handle favorite icon press
                      },
                    ),
                    SvgPicture.asset(
                      AssetsConstants
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
                      avalaibility: AssetsConstants.imavlRed,
                      onPressed: null,
                    )),
              if (isVisible)
                const Positioned(
                    top: 200,
                    right: 50,
                    child: Locator(
                      avalaibility: AssetsConstants.imavlYellow,
                      onPressed: null,
                    )),
              if (isVisible)
                const Positioned(
                    bottom: 400,
                    left: 20,
                    child: Locator(
                      avalaibility: AssetsConstants.imavlGreen,
                      onPressed: null,
                    )),
              if (isVisible)
                const Positioned(
                    bottom: 200,
                    left: 70,
                    child: Locator(
                      avalaibility: AssetsConstants.imavlYellow,
                      onPressed: null,
                    )),
              if (isVisible)
                Positioned(
                    top: 160,
                    left: 110,
                    child: Locator(
                      avalaibility: AssetsConstants.imavlGreen,
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
