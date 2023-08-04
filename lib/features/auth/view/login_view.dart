import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/auth/view/login_view1.dart';
import 'package:myekigai/reusables/full_width_text.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/theme/pallete.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  static route() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const LoginView(),
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

  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
        toolbarHeight: ScreenUtil().setHeight(75),
        centerTitle: true,
        title: Container(
          padding: EdgeInsets.only(top: ScreenUtil().setHeight(40)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                GlobalAssets.logo,
                width: ScreenUtil().setWidth(30),
                height: ScreenUtil().setWidth(30),
              ),
              const SizedBox(width: 8),
              Text(
                'MYeKIGAI',
                textAlign: TextAlign.center,
                style: GoogleFonts.quantico(
                  color: Pallete.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil().setSp(24),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(80))
                        .copyWith(bottom: ScreenUtil().setHeight(40)),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(242, 242, 242, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(750.0, 250.0),
                  ),
                ),
                child: SvgPicture.asset(
                  AuthAssets.signUpHome,
                  // fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(20)),
            const FullWidthTextWidget(
              text: "Experience the power of EV now at affordable cost",
            ),
            SizedBox(height: ScreenUtil().setHeight(20)),
            CustomButton(
              text: "Continue with Phone number",
              onPressed: () {
                Navigator.push(context, LoginView1.route());
              },
            ),
            SizedBox(height: ScreenUtil().setHeight(20)),
            FullWidthTextWidget(
              text:
                  "By continuing you agree that you have read and accept our T&Cs and Privacy Policy.",
              fontSize: ScreenUtil().setSp(16),
              fontWeight: FontWeight.w500,
              textColor: Pallete.geryColor,
              horizontalPadding: 40,
            ),
            SizedBox(height: ScreenUtil().setHeight(20)),
          ],
        ),
      ),

      // Other Scaffold properties and widgets
    );
  }
}
