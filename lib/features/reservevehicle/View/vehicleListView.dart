import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/reservevehicle/View/vehicleDetails.dart';
import 'package:myekigai/reusables/TopAppbar.dart';
import 'package:myekigai/reusables/vehicleCard.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/theme/pallete.dart';

class VehicleListView extends StatelessWidget {
  const VehicleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(toptitle: "Choose Vehicle"),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListView(children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: ScreenUtil().setHeight(10),
                        bottom: 0,
                        left: ScreenUtil().setWidth(30),
                        right: ScreenUtil().setWidth(30)),
                    child: Text(
                      'Reserve any vehicle for an hour at minimal charges to ensure availability.',
                      style: GoogleFonts.sen(
                        color: Pallete.geryColor,
                        fontSize: ScreenUtil().setSp(15),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const VehicleCard(
                      image: ReserveVehicleAssets.imvoltix,
                      name: 'Voltix',
                      brand: 'Solaire',
                      stars: '4.1',
                      hours: '₹20/hr'),
                  const VehicleCard(
                      image: ReserveVehicleAssets.imblizz,
                      name: 'bLizz',
                      brand: 'Tesla',
                      stars: '4.4',
                      hours: '₹20/hr'),
                  VehicleCard(
                    image: ReserveVehicleAssets.imsrix,
                    name: 'Srix-4',
                    brand: 'Ather',
                    stars: '4.0',
                    hours: '₹20/hr',
                    onPressed: () {},
                  ),
                  const VehicleCard(
                      image: ReserveVehicleAssets.imunzart,
                      name: 'Unzart-3',
                      brand: 'MYeKIGAI',
                      stars: '4.6',
                      hours: '₹20/hr'),
                  const VehicleCard(
                      image: ReserveVehicleAssets.imhelix,
                      name: 'Helix',
                      brand: 'Tesla',
                      stars: '3.9',
                      hours: '₹20/hr'),
                  const VehicleCard(
                      image: ReserveVehicleAssets.imunzart,
                      name: 'EVG-75',
                      brand: 'Ather',
                      stars: '4.2',
                      hours: '₹20/hr'),
                  const VehicleCard(
                      image: ReserveVehicleAssets.imunzart,
                      name: 'Unzart-3',
                      brand: 'MYeKIGAI',
                      stars: '4.6',
                      hours: '₹20/hr'),
                  const VehicleCard(
                      image: ReserveVehicleAssets.imunzart,
                      name: 'Unzart-3',
                      brand: 'MYeKIGAI',
                      stars: '4.6',
                      hours: '₹20/hr'),
                  const VehicleCard(
                      image: ReserveVehicleAssets.imunzart,
                      name: 'Unzart-3',
                      brand: 'MYeKIGAI',
                      stars: '4.6',
                      hours: '₹20/hr'),
                  const VehicleCard(
                      image: ReserveVehicleAssets.imunzart,
                      name: 'Unzart-3',
                      brand: 'MYeKIGAI',
                      stars: '4.6',
                      hours: '₹20/hr'),
                  const VehicleCard(
                      image: ReserveVehicleAssets.imunzart,
                      name: 'Unzart-3',
                      brand: 'MYeKIGAI',
                      stars: '4.6',
                      hours: '₹20/hr'),
                  const VehicleCard(
                      image: ReserveVehicleAssets.imunzart,
                      name: 'Unzart-3',
                      brand: 'MYeKIGAI',
                      stars: '4.6',
                      hours: '₹20/hr'),
                ]),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                decoration: const BoxDecoration(
                  color: Pallete.btnTextColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, // Shadow color
                      offset: Offset(0, 2), // Offset in the x, y direction
                      blurRadius: 2, // Spread radius of the shadow
                      spreadRadius:
                          2, // The size of the shadow relative to the box (positive value increases the size, negative value reduces it)
                    ),
                  ],
                ),
                child: CustomButton(
                    text: 'Continue',
                    onPressed: () {
                      Get.to(() => VehicleDetails(),
                          transition: Transition.rightToLeft,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear);
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
