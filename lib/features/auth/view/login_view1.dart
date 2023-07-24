import 'package:flutter/material.dart';
import 'package:myekigai/features/auth/view/login_view2.dart';
import 'package:myekigai/features/auth/widgets/auth_field.dart';
import 'package:myekigai/reusables/full_width_text.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/theme/pallete.dart';

class LoginView1 extends StatefulWidget {
  static route() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const LoginView1(),
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

  const LoginView1({Key? key}) : super(key: key);

  @override
  State<LoginView1> createState() => _LoginView1State();
}

class _LoginView1State extends State<LoginView1> {
  final phoneNumber = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    phoneNumber.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 80),
            const FullWidthTextWidget(
              text: "Enter Phone Number for Verification",
              fontSize: 20,
              textAlign: TextAlign.left,
              horizontalPadding: 30,
            ),
            const SizedBox(height: 10),
            const FullWidthTextWidget(
              text:
                  "This number will be used for all ride related communication. You shall receive an sms with code for verification.",
              fontSize: 15,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.left,
              textColor: Pallete.geryColor,
              horizontalPadding: 30,
            ),
            const SizedBox(height: 40),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    AuthField(
                        controller: phoneNumber,
                        hintText: '+91 | Enter your Phone Number'),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                )),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  text: "Sent OTP",
                  onPressed: () {
                    Navigator.push(context, LoginView2.route());
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
