import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/constants/assets_constants.dart';
import 'package:myekigai/features/homescreen/view/home_view.dart';
import 'package:myekigai/features/reservevehicle/widgets/timerBox.dart';
import 'package:myekigai/reusables/vehicleInfoBox.dart';
import 'package:myekigai/theme/theme.dart';
import '../../../reusables/VehicleCardWithLargeImage.dart';
import '../../../reusables/textWithIcon.dart';

class LastReserveVehicle extends StatefulWidget {
  const LastReserveVehicle({super.key});

  @override
  _LastReserveVehicleState createState() => _LastReserveVehicleState();
}

class _LastReserveVehicleState extends State<LastReserveVehicle> {
  // Flag to track if the popup should be dismissed or not
  bool _shouldDismissPopup = false;

  void _showPopupMessage(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent dismissing by tapping outside
      builder: (BuildContext context) {
        // Duration for how long the popup should be shown (in seconds)
        const popupDuration = 3;

        // Dismiss the popup after the specified duration
        Future.delayed(const Duration(seconds: popupDuration), () {
          if (!_shouldDismissPopup) {
            Navigator.of(context).pop();
          }
        });

        return WillPopScope(
          onWillPop: () async {
            // Disable the back button while the popup is showing
            return false;
          },
          child: AlertDialog(
            contentPadding: const EdgeInsets.all(16),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Your ride is reserved for 1 hour.",
                  style: GoogleFonts.sen(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 16),
                Image.asset(
                  AssetsConstants
                      .imLock, // Replace this with the path to your image
                  // width: 69 + 11,
                  // height: 69 + 11,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    // Set the flag to true when the widget is disposed
    _shouldDismissPopup = true;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Show the center popup message when the page is shown
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _showPopupMessage(context);
    });

    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Text(
          'Vehicle details',
          style: GoogleFonts.sen(
            color: Pallete.textColor,
            fontSize: 21,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_sharp,
              color: Color(0xFF1C1C1C)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: Colors.white,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.11,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 0),
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
              Text(
                'Your vehicle is reserved!',
                style: GoogleFonts.sen(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Pallete.textColor,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your ride is reserved for',
                    style: GoogleFonts.sen(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Pallete.textColor,
                    ),
                  ),
                  const TimerBox(
                    min: '59',
                    sec: '59',
                  )
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
