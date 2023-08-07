import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/reusables/popupWidget.dart';
import 'package:myekigai/reusables/vehicleInfoBox.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/theme/theme.dart';

import '../../../reusables/VehicleCardWithLargeImage.dart';
import '../../../reusables/textWithIcon.dart';
import 'showDriversLicense.dart';
import 'package:myekigai/features/scanandgo/controller/apicall.dart';
import '../controller/VehicleClass.dart';

class ScanGoVehicleDetails extends StatefulWidget {
  final String code;
  const ScanGoVehicleDetails({super.key, required this.code});

  @override
  State<ScanGoVehicleDetails> createState() => _ScanGoVehicleDetailsState();
}

class _ScanGoVehicleDetailsState extends State<ScanGoVehicleDetails> {
  late Future<Vehicle> _futureVehicle;

  @override
  void initState() {
    super.initState();
    _futureVehicle = ApiService.fetchData(widget.code);
  }

  @override
  Widget build(BuildContext context) {
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
            fontSize: ScreenUtil().setSp(23),
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
      body: FutureBuilder<Vehicle>(
        future: _futureVehicle,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            return Column(children: [
              VehicleCardWithLargeImage(
                brand: 'Solaire',
                image: GlobalAssets.bike,
                name: snapshot.data!.vehicleName.toString(),
                stars: '4.3 ⭐',
              ),
              Spacer(),
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
                            fontSize: ScreenUtil().setSp(23),
                            fontWeight: FontWeight.w400,
                            color: Pallete.textColor,
                          ),
                        ),
                        SizedBox(height: ScreenUtil().setHeight(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            VehicleInfoBox(
                                icon: GlobalAssets.charging,
                                midText: 'Charging',
                                bottomText:
                                    snapshot.data!.charging.toString() + '%'),
                            VehicleInfoBox(
                                icon: GlobalAssets.maxspeed,
                                midText: 'Max Speed',
                                bottomText: snapshot.data!.maxSpeed.toString() +
                                    'kmph'),
                            VehicleInfoBox(
                                icon: GlobalAssets.range,
                                midText: 'Range',
                                bottomText:
                                    snapshot.data!.range.toString() + 'km'),
                          ],
                        ),
                      ],
                    )),
              ),
              Spacer(),
              Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.19,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vehicle Features",
                          style: GoogleFonts.sen(
                            fontSize: ScreenUtil().setSp(23),
                            fontWeight: FontWeight.w400,
                            color: Pallete.textColor,
                          ),
                        ),
                        SizedBox(height: ScreenUtil().setHeight(14)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWithIcon(
                                  icon: GlobalAssets.passengers,
                                  text:
                                      snapshot.data!.passengerCount.toString() +
                                          ' Passengers',
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(14),
                                ),
                                TextWithIcon(
                                    icon: GlobalAssets.snowtires,
                                    text: 'Snow Tires'),
                                SizedBox(
                                  height: ScreenUtil().setHeight(14),
                                ),
                                TextWithIcon(
                                    icon: GlobalAssets.blutooth,
                                    text: 'Blutooth')
                              ],
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextWithIcon(
                                      icon: GlobalAssets.wheels,
                                      text: snapshot.data!.wheels.toString() +
                                          ' Wheels'),
                                  SizedBox(
                                    height: ScreenUtil().setHeight(16),
                                  ),
                                  TextWithIcon(
                                      icon: GlobalAssets.gps, text: 'GPS'),
                                  SizedBox(
                                    height: ScreenUtil().setHeight(16),
                                  ),
                                  TextWithIcon(
                                      icon: GlobalAssets.manual,
                                      text:
                                          snapshot.data!.typeOfCar.toString()),
                                ])
                          ],
                        ),
                      ],
                    ),
                  )),
              Spacer(),
              Expanded(
                flex: 0,
                child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.1,
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
                          Expanded(
                            flex: 0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                'Your vehicle will be reserved for one hour.',
                                style: GoogleFonts.sen(
                                  fontSize: ScreenUtil().setSp(18),
                                  fontWeight: FontWeight.w400,
                                  color: Pallete.textColor,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(9)),
                          CustomButton(
                              text: 'Start Ride',
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
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ShowDriverLicense()));
                                    },
                                    btnText: 'Confirm',
                                    returnText: 'No, Return',
                                    titleText: 'Ready to begin?',
                                  ),
                                );
                              })
                        ],
                      ),
                    )),
              )
            ]);
          } else {
            return Center(child: Text('Failed to load data'));
          }
        },
      ),
    );
  }
}
