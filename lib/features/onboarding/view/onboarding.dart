import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myekigai/features/auth/view/login_view.dart';
import 'package:myekigai/reusables/Navbar.dart';
import 'package:myekigai/features/homescreen/view/home_view.dart';
import 'package:myekigai/reusables/key_navbar.dart';
import 'content_model.dart';
import 'package:myekigai/theme/pallete.dart';

class Onboarding extends StatefulWidget {
  static route() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const Onboarding(),
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

  const Onboarding({Key? key}) : super(key: key);
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(420, 910),
        builder: (context, child) {
          return Scaffold(
            body: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: contents.length,
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (_, i) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20),vertical: ScreenUtil().setHeight(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: SvgPicture.asset(
                                contents[i].image,
                                width: ScreenUtil().setWidth(380),
                                height: ScreenUtil().setWidth(380),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(16)),
                  child: Container(
                    height: ScreenUtil().setHeight(80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (currentIndex >= 0)
                          TextButton(
                            child:  Text(
                              "Prev",
                              style: TextStyle(
                                 fontSize: ScreenUtil().setSp(16),
                                fontFamily: "Montserrat",
                                color: Pallete.textColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {
                              _controller.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            },
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            contents.length,
                            (index) => buildDot(index),
                          ),
                        ),
                        TextButton(
                          child: Text(
                            currentIndex == contents.length - 1
                                ? "Done"
                                : "Next",
                            style:  TextStyle(
                               fontSize: ScreenUtil().setSp(16),
                              fontFamily: "Montserrat",
                              color: Pallete.textColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onPressed: () {
                            if (currentIndex == contents.length - 1) {
                              Navigator.push(context, HomeScreen.route());
                            } else {
                              _controller.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Container buildDot(int index) {
    return Container(
      height: 10,
      width: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Pallete.textColor : Pallete.geryColor,
      ),
    );
  }
}
