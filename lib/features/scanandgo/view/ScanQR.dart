import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/scanandgo/view/ScanGoVehicleDetails.dart';
import 'package:myekigai/theme/pallete.dart';

class ScanQR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Text(
          'Scan & Go',
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
      body: Stack(
        children: [
          Positioned(
            right: 8,
            top: 8,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ScanGoAssets.question),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: 36,
            left: 16,
            right: 16,
            child: Column(
              children: [
                Container(
                  height: 34,
                ),
                Text(
                  'Scan QR on Vehicle screen',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sen(
                    color: Pallete.textColor,
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    // Navigation logic to navigate to the Test() page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ScanGoVehicleDetails()), // Replace 'Test()' with the actual name of the Test page constructor
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: ShapeDecoration(
                      color: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'QR Scanner Placeholder',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1C1C1C),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: const EdgeInsets.only(
                  bottom:
                      2), // Add margin to position the line below the boundary
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3FABABAB),
                    blurRadius: 4,
                    offset: Offset(0, -2),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  Container(
                    width: 66,
                    height: 3,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1C1C1C),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      right: 24,
                      bottom: 20,
                    ),
                    child: Text(
                      'Scan QR code on any vehicle on eKI-zone to start ride.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: Pallete.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
