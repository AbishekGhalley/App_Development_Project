import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:myekigai/constants/constants.dart';

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
                  ReserveVehicleAssets
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showPopupMessage(context);
    });

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
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
        Expanded(
          //Expaned 1
          flex: 4,
          child: const VehicleCardWithLargeImage(
            brand: 'Solaire',
            image: GlobalAssets.bike,
            name: 'Voltix',
            stars: '4.3 ⭐',
          ),
        ),
        Expanded(
          //Expanded 2
          flex: 2,
          child: Container(
            color: Colors.white,
            width: double.infinity,
            child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(26)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 0,
                      child: Text(
                        "Specifications",
                        style: GoogleFonts.sen(
                          fontSize: ScreenUtil().setSp(21),
                          fontWeight: FontWeight.w400,
                          color: Pallete.textColor,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          VehicleInfoBox(
                              icon: GlobalAssets.charging,
                              midText: 'Charging',
                              bottomText: '90%'),
                          VehicleInfoBox(
                              icon: GlobalAssets.maxspeed,
                              midText: 'Max Speed',
                              bottomText: '110 kmph'),
                          VehicleInfoBox(
                              icon: GlobalAssets.range,
                              midText: 'Range',
                              bottomText: '120km'),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ),
        Expanded(
          //Expanded 3
          flex: 2,
          child: Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(26)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 0,
                      child: Text(
                        "Vehicle Features",
                        style: GoogleFonts.sen(
                          fontSize: 21,
                          fontWeight: FontWeight.w400,
                          color: Pallete.textColor,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWithIcon(
                                icon: GlobalAssets.passengers,
                                text: '2 Passengers',
                              ),
                              TextWithIcon(
                                  icon: GlobalAssets.snowtires,
                                  text: 'Snow Tires'),
                              TextWithIcon(
                                  icon: GlobalAssets.blutooth, text: 'Blutooth')
                            ],
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWithIcon(
                                    icon: GlobalAssets.wheels,
                                    text: '2 Wheels'),
                                TextWithIcon(
                                    icon: GlobalAssets.gps, text: 'GPS'),
                                TextWithIcon(
                                    icon: GlobalAssets.manual, text: 'Manual'),
                              ])
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
        Expanded(
          // Expanded 4
          flex: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: Colors.white,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.11,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
          ),
        )
      ]),
    );
  }
}
