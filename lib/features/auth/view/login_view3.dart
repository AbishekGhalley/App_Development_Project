import 'package:flutter/material.dart';
import 'package:myekigai/features/auth/view/login_view4.dart';
import 'package:myekigai/features/auth/widgets/auth_field.dart';
import 'package:myekigai/reusables/full_width_text.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/theme/pallete.dart';

class LoginView3 extends StatefulWidget {
  static route() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const LoginView3(),
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

  const LoginView3({Key? key}) : super(key: key);

  @override
  State<LoginView3> createState() => _LoginView3State();
}

class _LoginView3State extends State<LoginView3> {
  final phoneNumber = TextEditingController();
  var _value = "-1";

  @override
  void dispose() {
    super.dispose();
    phoneNumber.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 80),
            const FullWidthTextWidget(
              text: "Let’s know you...",
              fontSize: 20,
              textAlign: TextAlign.left,
              horizontalPadding: 30,
            ),
            const SizedBox(height: 10),
            const FullWidthTextWidget(
              text:
                  "Fill in your personal details to help us connect to you better",
              fontSize: 15,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.left,
              textColor: Pallete.geryColor,
              horizontalPadding: 30,
            ),
            const SizedBox(height: 40),
            const FullWidthTextWidget(
              text: "Name*",
              fontSize: 15,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.left,
              textColor: Pallete.geryColor,
              horizontalPadding: 35,
            ),
            const SizedBox(height: 10),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    AuthField(
                        controller: phoneNumber,
                        hintText: 'ex - Kshitij Singh'),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                )),
            const FullWidthTextWidget(
              text: "Gender*",
              fontSize: 15,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.left,
              textColor: Pallete.geryColor,
              horizontalPadding: 35,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(
                        color: Pallete.primaryColor,
                        width: 3,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(
                        color: Pallete.primaryColor,
                        width: 1,
                      )),
                  contentPadding: const EdgeInsets.all(15),
                ),
                value: _value,
                items: const [
                  DropdownMenuItem(
                    child: Text("-Select Gender-"),
                    value: "-1",
                  ),
                  DropdownMenuItem(
                    child: Text("Male"),
                    value: "1",
                  ),
                  DropdownMenuItem(
                    child: Text("Female"),
                    value: "2",
                  ),
                  DropdownMenuItem(
                    child: Text("Transgender"),
                    value: "3",
                  ),
                  DropdownMenuItem(
                    child: Text("Bisexual"),
                    value: "4",
                  ),
                ],
                onChanged: (v) {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const FullWidthTextWidget(
              text: "Email id*",
              fontSize: 15,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.left,
              textColor: Pallete.geryColor,
              horizontalPadding: 35,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  AuthField(
                      controller: phoneNumber, hintText: 'ex - xyz@gmail.com'),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  text: "Proceed",
                  onPressed: () {
                    Navigator.push(context, LoginView4.route());
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
