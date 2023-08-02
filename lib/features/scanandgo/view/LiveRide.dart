import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/reusables/popupWidget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../theme/pallete.dart';
import 'RideFinished.dart';

class LiveRide extends StatefulWidget {
  LiveRide({super.key});

  @override
  State<LiveRide> createState() => _LiveRideState();
}

class _LiveRideState extends State<LiveRide> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Image.asset(
                // Map must be added here
                'assets/pngs/map.png',
                width: double.infinity,
                height: 800,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top + 8,
                left: 20,
                child: Container(
                  decoration: ShapeDecoration(
                    color: const Color(0xFF363636),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu_rounded,
                        size: 32,
                        color: Colors.white,
                      )),
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
                          right: 16, bottom: screenHight * 0.032),
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
                          const SizedBox(
                            height: 4,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isVisible = !isVisible;
                                showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(16.0),
                                    ),
                                  ),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Text(
                                              'Need Help? Call Emergency',
                                              style: GoogleFonts.sen(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 15),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Text(
                                              'Contact emergency services to receive aid in case of danger.',
                                              style: GoogleFonts.sen(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Pallete.geryColor,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          SizedBox(
                                            height: screenHight * 0.058,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                // Call Emergency action here
                                                Navigator.pop(
                                                    context); // Close the BottomSheet after action
                                              },
                                              style: ElevatedButton.styleFrom(
                                                elevation: 0,
                                                backgroundColor: Color(
                                                    0xFFE52144), // Background color
                                                foregroundColor:
                                                    Colors.white, // Text color
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0), // Button border radius
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 0),
                                              ),
                                              child: Text(
                                                'Call Emergency',
                                                style: GoogleFonts.sen(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Pallete.btnTextColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                        ],
                                      ),
                                    );
                                  },
                                );
                                ; // Toggle the visibility on tap
                              });
                            },
                            child: SvgPicture.asset(
                              GlobalAssets
                                  .imekizone, // Replace with your SVG asset path
                              height: 36, // Set the height of the SVG
                              width: 36, // Set the width of the SVG
                            ),
                          ),
                        ],
                      ),
                    ),
                    // BottomSheet(onClosing: onClosing, builder: builder),
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
                        minHeight: MediaQuery.of(context).size.height * 0.3388,
                        maxHeight: screenHight * 0.34,
                        panel: Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      top: screenHight * 0.012,
                                    ),
                                    height: screenHight * 0.0035,
                                    width: 66,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(3)),
                                      color: Pallete.textColor,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    'Trip Details',
                                    style: GoogleFonts.sen(
                                      color: Pallete.textColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Voltix',
                                            style: GoogleFonts.sen(
                                              color: Pallete.textColor,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            'Solaire',
                                            style: GoogleFonts.sen(
                                              color: Pallete.geryColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                            ),
                                          )
                                        ],
                                      ),
                                      Text(
                                        'Rs 20/hr',
                                        style: GoogleFonts.sen(
                                          color: Pallete.textColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Container(
                                    height: 1,
                                    color: Pallete.partitionlineColor,
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Distance',
                                        style: GoogleFonts.sen(
                                          color: Pallete.textColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        '5.5 km',
                                        style: GoogleFonts.sen(
                                          color: Pallete.textColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Wait',
                                        style: GoogleFonts.sen(
                                          color: Pallete.textColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        '6 min',
                                        style: GoogleFonts.sen(
                                          color: Pallete.textColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                CustomButton(
                                    text: 'Finish Ride',
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
                                            Navigator.popUntil(context,
                                                (route) => route.isFirst);
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const RideFinished()));
                                          },
                                          btnText: 'Confirm',
                                          returnText: 'No, Return',
                                          titleText: 'Finish Ride?',
                                        ),
                                      );
                                    }),
                                const Spacer(),
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
  }
}
