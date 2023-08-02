import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/theme/pallete.dart';

import 'UploadDL.dart';

class ShowDriverLicense extends StatefulWidget {
  const ShowDriverLicense({super.key});

  @override
  _ShowDriverLicenseState createState() => _ShowDriverLicenseState();
}

class _ShowDriverLicenseState extends State<ShowDriverLicense> {
  // Flag to track if the popup should be dismissed or not
  bool _shouldDismissPopup = false;

  void _showPopupMessage(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent dismissing by tapping outside
      builder: (BuildContext context) {
        // Duration for how long the popup should be shown (in seconds)
        const popupDuration = 2;

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
                  "Your ride has begun. Enjoy!",
                  style: GoogleFonts.sen(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 26),
                Image.asset(
                  ScanGoAssets
                      .imshuttle, // Replace this with the path to your image
                  // width: 69 + 11,
                  // height: 69 + 11,
                ),
                const SizedBox(height: 26),
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
      body: Stack(children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
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
                    color: Pallete.partitionlineColor,
                    blurRadius: 4,
                    offset: Offset(0, -2),
                    spreadRadius: 0,
                  )
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.55,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 30, left: 30),
                    child: Text(
                      'Looks Like You Need To Upload Your Driver’s License ',
                      style: GoogleFonts.sen(
                          fontSize: 27,
                          fontWeight: FontWeight.w400,
                          color: Pallete.textColor),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 30, left: 30),
                    child: Text(
                      'Upload your driver’s license to proceed further and enjoy a ride with MYeKIGAI',
                      style: GoogleFonts.sen(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Pallete.geryColor),
                    ),
                  ),
                  const Spacer(),
                  CustomButton(
                      text: 'Upload Driver\'s License',
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UploadDL()));
                      }),
                  const SizedBox(
                    height: 20,
                  )
                ],
              )),
        ),
      ]),
    );
  }
}
