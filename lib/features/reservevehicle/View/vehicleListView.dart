import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/reservevehicle/View/vehicleDetails.dart';
import 'package:myekigai/reusables/vehicleCard.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/theme/pallete.dart';

class VehicleListView extends StatelessWidget {
  const VehicleListView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose Vehicle',
          style: GoogleFonts.sen(
              color: Pallete.textColor, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_sharp,
              color: Color(0xFF1C1C1C)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 4,
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 0, left: 35, right: 35),
            child: Text(
              'Reserve any vehicle for an hour at minimal charges to ensure availability.',
              style: GoogleFonts.sen(
                color: Pallete.geryColor,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            height: screenHeight * 0.7,
            child: ListView(children: [
              const VehicleCard(
                  image: AssetsConstants.imvoltix,
                  name: 'Voltix',
                  brand: 'Solaire',
                  stars: '4.1',
                  hours: '₹20/hr'),
              const VehicleCard(
                  image: AssetsConstants.imblizz,
                  name: 'bLizz',
                  brand: 'Tesla',
                  stars: '4.4',
                  hours: '₹20/hr'),
              VehicleCard(
                image: AssetsConstants.imsrix,
                name: 'Srix-4',
                brand: 'Ather',
                stars: '4.0',
                hours: '₹20/hr',
                onPressed: () {},
              ),
              const VehicleCard(
                  image: AssetsConstants.imunzart,
                  name: 'Unzart-3',
                  brand: 'MYeKIGAI',
                  stars: '4.6',
                  hours: '₹20/hr'),
              const VehicleCard(
                  image: AssetsConstants.imhelix,
                  name: 'Helix',
                  brand: 'Tesla',
                  stars: '3.9',
                  hours: '₹20/hr'),
              const VehicleCard(
                  image: AssetsConstants.imunzart,
                  name: 'EVG-75',
                  brand: 'Ather',
                  stars: '4.2',
                  hours: '₹20/hr'),
            ]),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.only(bottom: 20, top: 10),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VehicleDetails()));
                    }),
              ))
        ],
      ),
    );
  }
}
