import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/features/scanandgo/view/ScanGoVehicleDetails.dart';
import 'package:myekigai/theme/pallete.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../../../constants/constants.dart';

class ScanQRProper extends StatefulWidget {
  const ScanQRProper({super.key});

  @override
  State<ScanQRProper> createState() => _ScanQRProperState();
}

class _ScanQRProperState extends State<ScanQRProper> {
  @override
  Widget build(BuildContext context) {
    bool isScanned = false;
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
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ScanGoAssets.question),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ])),
            Expanded(
                flex: 0,
                child: Container(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Scan QR on Vehicle screen',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sen(
                      color: Pallete.textColor,
                      fontSize: 21,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )),
            Expanded(
                flex: 6,
                child: Stack(
                  children: [
                    MobileScanner(
                      controller: MobileScannerController(
                        detectionSpeed: DetectionSpeed.normal,
                      ),
                      onDetect: ((capture) {
                        if (!isScanned) {
                          final List<Barcode> barcodes = capture.barcodes;

                          String code = '---';
                          for (final barcode in barcodes) {
                            code = barcode.rawValue.toString();
                          }

                          isScanned = true;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ScanGoVehicleDetails(code: code)));
                        } else {}
                      }),
                    ),
                    Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Container(color: Colors.white)),
                                  Expanded(flex: 4, child: Container()),
                                  Expanded(
                                      child: Container(color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: double.infinity,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 0,
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
            )
          ],
        ),
      ),
    );
  }
}
