import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myekigai/features/auth/controller/SignUpController.dart';
import 'package:myekigai/features/auth/view/login_view2.dart';
import 'package:myekigai/features/auth/widgets/auth_field_phoneno.dart';
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
  final controller = Get.put(SignUpController());
  final _formKey = GlobalKey<FormState>();

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: ScreenUtil().setHeight(80)),
                FullWidthTextWidget(
                  text: "Enter Phone Number for Verification",
                  fontSize: ScreenUtil().setSp(20),
                  textAlign: TextAlign.left,
                  horizontalPadding: 30,
                ),
                SizedBox(height: ScreenUtil().setHeight(10)),
                FullWidthTextWidget(
                  text:
                      "This number will be used for all ride related communication. You shall receive an sms with code for verification.",
                  fontSize: ScreenUtil().setSp(15),
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.left,
                  textColor: Pallete.geryColor,
                  horizontalPadding: ScreenUtil().setWidth(30),
                ),
                SizedBox(height: ScreenUtil().setHeight(40)),
                Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(30)),
                    child: Column(
                      children: [
                        AuthField(
                          controller: controller.phoneNumber,
                        ),
                      ],
                    )),
                Spacer(),
                CustomButton(
                  text: "Sent OTP",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      SignUpController.instance.phoneAuthentication(
                          "+91" + controller.phoneNumber.text.trim());
                      Get.to(() => LoginView2(),transition: Transition.rightToLeft,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.linear);
                    }
                  },
                ),
                SizedBox(height: ScreenUtil().setHeight(20)),
              ],
            )),
      ),

      // Other Scaffold properties and widgets
    );
  }
}
