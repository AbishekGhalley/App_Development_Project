import 'package:flutter/material.dart';
import 'package:myekigai/features/shareride/view/shareridedriverdetails.dart';
import 'package:myekigai/features/shareride/widget/driverdetails.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/theme/pallete.dart';

class bottommodalsheet extends StatelessWidget {
  const bottommodalsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          color: Colors.white),
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Ready to share?",
              style: TextStyle(
                  fontSize: 22, fontFamily: 'Sen', fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
              text: "Confirm",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const shareridedriverdetails()));
              }),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "No,return",
                style: TextStyle(
                  fontFamily: "Sen",
                  fontSize: 16,
                  color: Pallete.primaryColor,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  decorationColor: Pallete.primaryColor,
                  decorationThickness: 1.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
