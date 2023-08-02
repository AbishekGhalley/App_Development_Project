import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/onboarding/view/onboarding.dart';
import 'package:myekigai/reusables/full_width_text.dart';
import 'package:myekigai/theme/pallete.dart';

import '../../../reusables/btn.dart';

class LoginView4 extends StatefulWidget {
  static route() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const LoginView4(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    );
  }

  const LoginView4({Key? key}) : super(key: key);

  @override
  State<LoginView4> createState() => _LoginView4State();
}

class _LoginView4State extends State<LoginView4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: SvgPicture.asset(
                AuthAssets.permission,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 40),
            const FullWidthTextWidget(
              text: "Location permission not enabled",
            ),
            const SizedBox(height: 20),
            const FullWidthTextWidget(
              text:
                  "Sharing location helps us locate you nearest eKI-zones and enhance your ride experience.",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              textColor: Pallete.geryColor,
              horizontalPadding: 40,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  text: "Allow Permission",
                  onPressed: () {
                    Navigator.push(context, Onboarding.route());
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),

      // Other Scaffold properties and widgets
    );
  }
}
