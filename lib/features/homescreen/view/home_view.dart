import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/SwapBatteries/view/swapBatteries.dart';
import 'package:myekigai/features/hamburger/view/Navbar.dart';
import 'package:myekigai/features/reservevehicle/View/reserve_vehicle_view.dart';
import 'package:myekigai/reusables/key_navbar.dart';
import 'package:myekigai/reusables/searchbar.dart';
import '../../../theme/pallete.dart';

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
    return Scaffold(
      key: global_navbar.scaffoldKey,
      drawer: Navbar(scaffoldKey: global_navbar.scaffoldKey,),
      backgroundColor: Colors.black,
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
                child: CustomSearchBar(scaffoldKey: global_navbar.scaffoldKey,),
              ),
              Positioned(
                bottom: 240,
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
              DraggableScrollableSheet(
                initialChildSize: 0.3, // Initial size of the sheet
                minChildSize: 0.22, // Minimum size of the sheet
                maxChildSize: 0.30, // Maximum size of the sheet
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(16.0)),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 3.0,
                          width: 66,
                          margin: const EdgeInsets.only(top: 16, bottom: 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.5),
                            color: Colors.black,
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onVerticalDragUpdate: (details) {
                              if (details.delta.dy < 0) {
                                // Swiping up
                                if (scrollController.position.extentBefore ==
                                    0.0) {
                                  scrollController.animateTo(
                                    scrollController.position.maxScrollExtent,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                }
                              } else if (details.delta.dy > 0) {
                                // Swiping down
                                if (scrollController.position.extentBefore >
                                    MediaQuery.of(context).size.height * 0.2) {
                                  scrollController.animateTo(
                                    0,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                }
                              }
                            },
                            child: ListView.builder(
                              controller: scrollController,
                              itemBuilder: (context, index) {
                                if (index == 0) {
                                  return ListTile(
                                    title: Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              top: 0, left: 6, bottom: 6),
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Services',
                                            style: GoogleFonts.sen(
                                              color: Pallete.textColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 21,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                                elevation:
                                                    0, // Remove box shadow
                                              ),
                                              onPressed: () {
                                                // Handle button 1 press
                                              },
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                    AssetsConstants
                                                        .imhomescango,
                                                    height: 60,
                                                    width: 70,
                                                  ),
                                                  Text(
                                                    'Scan & Go',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.sen(
                                                      color: Pallete.textColor,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                                elevation:
                                                    0, // Remove box shadow
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ReserveVehicle()));
                                              },
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                    AssetsConstants
                                                        .imreserveVehicle,
                                                    height: 60,
                                                    width: 60,
                                                  ),
                                                  Text(
                                                    'Reservation',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.sen(
                                                      color: Pallete.textColor,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                                elevation:
                                                    0, // Remove box shadow
                                              ),
                                              onPressed: () {
                                                // Handle button 3 press
                                              },
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                    AssetsConstants.imbuddy,
                                                    height: 60,
                                                    width: 80,
                                                  ),
                                                  Text(
                                                    'Get Buddy',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.sen(
                                                      color: Pallete.textColor,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                                elevation:
                                                    0, // Remove box shadow
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                    context, MyScreen.route());
                                              },
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                    AssetsConstants
                                                        .imswapbattery,
                                                    height: 60,
                                                    width: 60,
                                                  ),
                                                  Text(
                                                    'Swap',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.sen(
                                                      color: Pallete.textColor,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                                elevation:
                                                    0, // Remove box shadow
                                              ),
                                              onPressed: () {
                                                // do something
                                              },
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                    AssetsConstants
                                                        .imsupercharge,
                                                    height: 60,
                                                    width: 80,
                                                  ),
                                                  Text(
                                                    'Supercharge',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.sen(
                                                      color: Pallete.textColor,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                                elevation:
                                                    0, // Remove box shadow
                                              ),
                                              onPressed: () {
                                                // Handle button 3 press
                                              },
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                    AssetsConstants.imshareRide,
                                                    height: 60,
                                                    width: 60,
                                                  ),
                                                  Text(
                                                    'Share Ride',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.sen(
                                                      color: Pallete.textColor,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                }
                                // final result = filteredResults[index - 1];
                                // return ListTile(
                                //   title: Text(result),
                                // );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
