import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/constants/assets_constants.dart';
import 'package:myekigai/features/reservevehicle/View/reserveVehicle2.dart';

import 'package:myekigai/features/reservevehicle/View/vehicleListView.dart';
import 'package:myekigai/features/reservevehicle/widgets/rowitem.dart';
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
                constraints: const BoxConstraints(maxWidth: 360),
                padding: const EdgeInsets.all(10),
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
                            imagePath: AssetsConstants.iicon,
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
                      height: 16,
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

class BottomWidget1 extends StatelessWidget {
  const BottomWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            bottom: 0,
            child: Container(
                constraints: const BoxConstraints(maxWidth: 360),
                padding: const EdgeInsets.all(10),
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
                            imagePath: AssetsConstants.iicon,
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ReserveVehicle2()));
                      },
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 16,
                    )
                  ],
                ))),
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
              height: 260,
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
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text('Station Details',
                          style: GoogleFonts.sen(
                            color: Pallete.textColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset(AssetsConstants.iicon))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Image(
                          image: AssetImage(AssetsConstants.stationImage)),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        //right column with texts starting sector 19
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Sector 19',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.montserrat(
                                color: Pallete.textColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              )),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Open 24 hrs',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.montserrat(
                              color: const Color.fromRGBO(9, 171, 229, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text('3 km',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.montserrat(
                                color: Pallete.textColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              )),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  SvgPicture.asset(
                                    AssetsConstants
                                        .imheart, // Replace with your SVG asset path
                                    height: 22, // Set the height of the SVG
                                    // Set the width of the SVG
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                AssetsConstants
                                    .imshareInReserveVehicle, // Replace with your SVG asset path
                                height: 24, // Set the height of the SVG
                                // Set the width of the SVG
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: "Continue",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VehicleListView()));
                    },
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
