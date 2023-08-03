import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myekigai/features/auth/controller/OtpController.dart';
import 'package:myekigai/features/auth/view/login_view3.dart';
import 'package:myekigai/reusables/full_width_text.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/features/auth/widgets/otp_field.dart';
import 'package:myekigai/theme/pallete.dart';

class LoginView2 extends StatefulWidget {
  static route() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const LoginView2(),
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

  const LoginView2({Key? key}) : super(key: key);

  @override
  State<LoginView2> createState() => _LoginView2State();
}

class _LoginView2State extends State<LoginView2> {
  final OtpController otpController = Get.put(OtpController());
  Widget build(BuildContext context) {
    var otp;
    return ScreenUtilInit(
        designSize: Size(420, 910),
        builder: (context, child) {
          return Scaffold(
            body: SizedBox(
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: ScreenUtil().setHeight(80)),
                  FullWidthTextWidget(
                    text: "Please wait...",
                    fontSize: ScreenUtil().setSp(18),
                    textAlign: TextAlign.left,
                    horizontalPadding: ScreenUtil().setWidth(30),
                  ),
                  FullWidthTextWidget(
                    text: "We are auto verifying the OTP sent to your number.",
                    fontSize: ScreenUtil().setSp(19),
                    textAlign: TextAlign.left,
                    horizontalPadding: ScreenUtil().setWidth(30),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(20)),
                  OtpTextField(
                    numberOfFields: 6,
                    margin: EdgeInsets.only(
                      right: ScreenUtil().setWidth(10),
                    ),
                    textStyle: TextStyle(
                        fontSize: ScreenUtil().setSp(20),
                        fontFamily: "Montserrat",
                        color: Pallete.textColor),
                    disabledBorderColor: Pallete.primaryColor,
                    enabledBorderColor: Pallete.primaryColor,
                    fieldWidth: ScreenUtil().setWidth(50),
                    filled: true,
                    borderRadius: BorderRadius.circular(6),
                    borderWidth: 1,
                    showFieldAsBox: true,
                    onSubmit: (code) {
                      otp = code;
                      OtpController.instance.verifyOtp(otp);
                    },
                  ),
                  SizedBox(height: ScreenUtil().setHeight(20)),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(30),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              style: TextStyle(
                                fontSize: ScreenUtil().setSp(16),
                                color: Pallete.geryColor,
                              ),
                              "Auto-verifying in 00:16"),
                          Text(
                            'Resend',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(16),
                                color: Pallete.primaryColor),
                          )
                        ]),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomButton(
                        text: "Verify",
                        onPressed: () {
                          OtpController.instance.verifyOtp(otp);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(20)),
                ],
              ),
            ),

            // Other Scaffold properties and widgets
          );
        });
  }
}
