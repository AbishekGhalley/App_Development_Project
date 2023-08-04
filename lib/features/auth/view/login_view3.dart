import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myekigai/features/auth/view/login_view4.dart';
import 'package:myekigai/features/auth/widgets/auth_field_phoneno.dart';
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
      body: Column(mainAxisSize: MainAxisSize.max, children: [
        Expanded(
            child: ListView(
          children: [
            SizedBox(height: ScreenUtil().setHeight(80)),
            FullWidthTextWidget(
              text: "Let’s know you...",
              fontSize: ScreenUtil().setSp(20),
              textAlign: TextAlign.left,
              horizontalPadding: ScreenUtil().setWidth(30),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            FullWidthTextWidget(
              text:
                  "Fill in your personal details to help us connect to you better",
              fontSize: ScreenUtil().setSp(15),
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.left,
              textColor: Pallete.geryColor,
              horizontalPadding: ScreenUtil().setWidth(30),
            ),
            SizedBox(height: ScreenUtil().setHeight(40)),
            FullWidthTextWidget(
              text: "Name*",
              fontSize: ScreenUtil().setSp(15),
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.left,
              textColor: Pallete.geryColor,
              horizontalPadding: ScreenUtil().setWidth(35),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            Container(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(30)),
                child: Column(
                  children: [
                    AuthField(
                        controller: phoneNumber,
                        hintText: 'ex - Kshitij Singh'),
                    SizedBox(
                      height: ScreenUtil().setHeight(10),
                    )
                  ],
                )),
            FullWidthTextWidget(
              text: "Gender*",
              fontSize: ScreenUtil().setSp(15),
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.left,
              textColor: Pallete.geryColor,
              horizontalPadding: ScreenUtil().setWidth(35),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(30)),
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
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(15),
                      vertical: ScreenUtil().setHeight(15)),
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
                    child: Text("Other"),
                    value: "3",
                  ),
                ],
                onChanged: (v) {},
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            FullWidthTextWidget(
              text: "Email id*",
              fontSize: ScreenUtil().setSp(15),
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.left,
              textColor: Pallete.geryColor,
              horizontalPadding: ScreenUtil().setWidth(35),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(30)),
              child: Column(
                children: [
                  AuthField(
                      controller: phoneNumber, hintText: 'ex - xyz@gmail.com'),
                  SizedBox(
                    height: ScreenUtil().setWidth(20),
                  )
                ],
              ),
            ),
          ],
        )),
        Container(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(15),
                vertical: ScreenUtil().setHeight(20)),
            child: CustomButton(
              text: "Proceed",
              onPressed: () {
                Navigator.push(context, LoginView4.route());
              },
            ))
      ]),

      // Other Scaffold properties and widgets
    );
  }
}
