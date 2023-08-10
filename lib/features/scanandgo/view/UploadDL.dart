import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/features/scanandgo/view/LiveRide.dart';
import 'package:myekigai/reusables/btn.dart';

import '../../../theme/pallete.dart';

class UploadDL extends StatelessWidget {
  const UploadDL({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Upload Driver’s License',
          style: GoogleFonts.sen(
              fontSize: ScreenUtil().setSp(20),
              fontWeight: FontWeight.w400,
              color: Pallete.textColor),
        ),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_sharp,
              color: Color(0xFF1C1C1C)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: screenHight * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Driver’s License Details',
                    style: GoogleFonts.sen(
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w400,
                        color: Pallete.textColor),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3FABABAB),
                            blurRadius: 4,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter DL Number',
                          hintStyle: GoogleFonts.sen(
                              fontSize: ScreenUtil().setSp(16),
                              fontWeight: FontWeight.w400,
                              color: Pallete.geryColor), // Placeholder text
                          //labelText: 'Label', // Label for the text field
                          border:
                              InputBorder.none, // Border around the text field
                          // You can customize the appearance further with properties like:
                          // fillColor: Colors.grey[200], // Background color when not focused
                          // filled: true, // Whether to fill the background
                          // prefixIcon: Icon(Icons.person), // Icon to display before the input
                          // suffixIcon: Icon(Icons.clear), // Icon to display after the input
                          // errorText: 'Error message', // Displayed when an error is shown
                          // errorStyle: TextStyle(color: Colors.red), // Style for the error message
                        ),
                      )),
                ),
              ],
            ),
            const Spacer(),

            // const Spacer(),
            // const Spacer(),
            // const Spacer(),
            // const Spacer(),
            // const Spacer(),
            // const Spacer(),
            // const Spacer(),
            // const Spacer(),
            // const Spacer(),
            // const Spacer(),
            // const Spacer(),
            // const Spacer(),
            // const Spacer(),
            // const Spacer(),
            // const Spacer(),
            // const Spacer(),
            // const Spacer(),
            CustomButton(
                text: 'Verify',
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LiveRide()));
                })
          ],
        ),
      ),
    );
  }
}
