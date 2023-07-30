import 'package:flutter/material.dart';
import 'package:myekigai/features/auth/view/login_view3.dart';
import 'package:myekigai/reusables/full_width_text.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/features/auth/widgets/otp_field.dart';
import 'package:myekigai/theme/pallete.dart';

class LoginView2 extends StatefulWidget {
  static Route<dynamic> route({required String verificationId}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          LoginView2(verificationId: verificationId),
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
  final String verificationId;
  const LoginView2({Key? key,required this.verificationId}) : super(key: key);

  @override
  State<LoginView2> createState() => _LoginView2State();
}

class _LoginView2State extends State<LoginView2> {
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
              text: "Please wait...",
              fontSize: 19,
              textAlign: TextAlign.left,
              horizontalPadding: 30,
            ),
            const FullWidthTextWidget(
              text: "We are auto verifying the OTP sent to your number.",
              fontSize: 19,
              textAlign: TextAlign.left,
              horizontalPadding: 30,
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: OtpField(),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Pallete.geryColor,
                      ),
                      text: "Auto-verifying in 00:16",
                      children: [
                        TextSpan(
                          text: '                              Resend',
                          style: TextStyle(
                              fontSize: 16, color: Pallete.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  text: "Verify",
                  onPressed: () {
                    Navigator.push(context, LoginView3.route());
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
