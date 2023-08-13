import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/reservevehicle/View/lastReserveVehicle.dart';
import 'package:myekigai/reusables/TopAppbar.dart';
import 'package:myekigai/reusables/popupWidget.dart';
import 'package:myekigai/reusables/vehicleInfoBox.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/theme/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          //Expanded 4
          flex: 0,
          child: Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: ScreenUtil().setWidth(20),
                          right: ScreenUtil().setWidth(20),
                          bottom: ScreenUtil().setHeight(8)),
                      child: Text(
                        'Your vehicle will be reserved for one hour.',
                        style: GoogleFonts.sen(
                          fontSize: ScreenUtil().setSp(16),
                          fontWeight: FontWeight.w400,
                          color: Pallete.textColor,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
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
              )),
        )
      ]),
    );
  }
}
