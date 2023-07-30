import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/constants/assets_constants.dart';
import 'package:myekigai/features/reservevehicle/View/lastReserveVehicle.dart';
import 'package:myekigai/reusables/TopAppbar.dart';
import 'package:myekigai/reusables/popupWidget.dart';
import 'package:myekigai/reusables/vehicleInfoBox.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/theme/theme.dart';

import '../../../reusables/VehicleCardWithLargeImage.dart';
import '../../../reusables/textWithIcon.dart';

class VehicleDetails extends StatelessWidget {
  const VehicleDetails({super.key});

  @override
  Widget build(BuildContext context) {
    bool isVisible = true;
    return Scaffold(
      appBar: TopAppbar(toptitle: "Vehicle Details"),
      body: Column(children: [
        const VehicleCardWithLargeImage(
          brand: 'Solaire',
          image: AssetsConstants.bike,
          name: 'Voltix',
          stars: '4.3 ⭐',
        ),
        Container(
          color: Colors.white,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.18,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Specifications",
                    style: GoogleFonts.sen(
                      fontSize: 21,
                      fontWeight: FontWeight.w400,
                      color: Pallete.textColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      VehicleInfoBox(
                          icon: AssetsConstants.ekizone,
                          midText: 'Charging',
                          bottomText: '90%'),
                      VehicleInfoBox(
                          icon: AssetsConstants.ekizone,
                          midText: 'Max Speed',
                          bottomText: '110 kmph'),
                      VehicleInfoBox(
                          icon: AssetsConstants.ekizone,
                          midText: 'Range',
                          bottomText: '120km'),
                    ],
                  ),
                ],
              )),
        ),
        Container(
          color: Colors.white,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.015,
        ),
        Container(
            color: Colors.white,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.18,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Vehicle Features",
                    style: GoogleFonts.sen(
                      fontSize: 21,
                      fontWeight: FontWeight.w400,
                      color: Pallete.textColor,
                    ),
                  ),
                  const SizedBox(height: 17),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWithIcon(
                            icon: AssetsConstants.ekizone,
                            text: '2 Passengers',
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          TextWithIcon(
                              icon: AssetsConstants.ekizone,
                              text: 'Snow Tires'),
                          SizedBox(
                            height: 14,
                          ),
                          TextWithIcon(
                              icon: AssetsConstants.ekizone, text: 'Blutooth')
                        ],
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWithIcon(
                                icon: AssetsConstants.ekizone,
                                text: '2 Wheels'),
                            SizedBox(
                              height: 14,
                            ),
                            TextWithIcon(
                                icon: AssetsConstants.ekizone, text: 'GPS'),
                            SizedBox(
                              height: 14,
                            ),
                            TextWithIcon(
                                icon: AssetsConstants.ekizone, text: 'Manual'),
                          ])
                    ],
                  ),
                ],
              ),
            )),
        Container(
          width: double.infinity,
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
            color: Colors.white,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.11,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    // child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Text("Rate",
                    //           style: GoogleFonts.montserrat(
                    //             color: Pallete.geryColor,
                    //             fontSize: 21,
                    //             fontWeight: FontWeight.w500,
                    //           )),
                    //       Text("₹70/hour",
                    //           style: GoogleFonts.sen(
                    //             color: Pallete.textColor,
                    //             fontSize: 20,
                    //             fontWeight: FontWeight.w400,
                    //           )),
                    //     ]),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Your vehicle will be reserved for one hour.',
                      style: GoogleFonts.sen(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Pallete.textColor,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(height: 8),
                  if (isVisible)
                    CustomButton(
                        text: 'Reserve Now',
                        onPressed: () {
                          showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(16.0),
                              ),
                            ),
                            context: context,
                            builder: (BuildContext context) => PopupWidget(
                              onReturnTap: () {
                                Navigator.popUntil(
                                    context, (route) => route.isFirst);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            LastReserveVehicle()));
                              },
                              btnText: 'Confirm',
                              returnText: 'No, Return',
                              titleText: 'Reserve Vehicle',
                            ),
                          );
                        })
                ],
              ),
            ))
      ]),
    );
  }
}
