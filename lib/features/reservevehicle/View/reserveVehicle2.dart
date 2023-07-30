import 'package:flutter/material.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/homescreen/widget/searchbar.dart';
import 'package:myekigai/features/reservevehicle/widgets/bottomContainer.dart';
import 'package:myekigai/features/reservevehicle/widgets/locator.dart';
import 'package:myekigai/reusables/Navbar.dart';
import 'package:myekigai/reusables/key_navbar.dart';

class ReserveVehicle2 extends StatefulWidget {
  const ReserveVehicle2({super.key});

  @override
  State<ReserveVehicle2> createState() => _ReserveVehicle2State();
}

class _ReserveVehicle2State extends State<ReserveVehicle2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      key: global_navbar.reservescaffoldKey2,
      drawer:Navbar(scaffoldKey: global_navbar.reservescaffoldKey2),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Image.asset(
                'assets/pngs/map.png',
                width: double.infinity,
                height: 800,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top + 8,
                left: 20,
                right: 20,
                child: CustomSearchBar(scaffoldKey: global_navbar.reservescaffoldKey),
              ),
              Positioned(
                bottom: 140,
                right: 16,
                child: Column(
                  children: [
                    IconButton(
                      icon: Image.asset(AssetsConstants.locate),
                      onPressed: () {
                        // Handle favorite icon press
                      },
                    ),
                    IconButton(
                      icon: Image.asset(AssetsConstants.ekizone),
                      onPressed: () {
                        // Handle share icon press
                      },
                    ),
                  ],
                ),
              ),
              const Positioned(
                  top: 150,
                  left: 60,
                  child: Locator(
                    avalaibility: AssetsConstants.imavlGreen,
                    onPressed: null,
                  )),
              const BottomWidget2()
            ],
          ),
        ),
      ),
    );
  }
}
