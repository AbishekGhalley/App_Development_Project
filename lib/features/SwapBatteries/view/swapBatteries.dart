import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myekigai/features/SwapBatteries/view/swap_batteries_payment.dart';
import 'package:myekigai/reusables/TopAppbar.dart';
import 'package:myekigai/reusables/reusables.dart';
import 'package:myekigai/theme/pallete.dart';

class swapbatteries extends StatelessWidget {
  static route() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => swapbatteries(),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(toptitle: "Swap Battery"),
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(171, 171, 171, 0.25),
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                  blurRadius: 1,
                ),
                BoxShadow(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                  blurRadius: 0,
                ),
              ]),
              height: 60,
              width: double.infinity,
              child: Row(
                children: [
                  Text(
                    'Old Battery No.',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        color: Pallete.geryColor),
                  ),
                  Spacer(),
                  VerticalDivider(
                    width: 2,
                    color: Pallete.partitionlineColor,
                  ),
                  SizedBox(width: 8,),
                  IconButton(
                    icon: Icon(Icons.camera_alt_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(171, 171, 171, 0.25),
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                  blurRadius: 1,
                ),
                BoxShadow(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                  blurRadius: 0,
                ),
              ]),
              height: 60,
              width: double.infinity,
              child: Row(
                children: [
                  Text(
                    'New Battery No.',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        color: Pallete.geryColor),
                  ),
                  Spacer(),
                  VerticalDivider(
                    width: 2,
                    color: Pallete.partitionlineColor,
                  ),
                  SizedBox(width: 8,),
                  IconButton(
                    icon: Icon(Icons.camera_alt_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: CustomButton(
                text: "Pay & Swap",
                onPressed: () {
                  Get.to(() => PaymentScreen(),
                      transition: Transition.rightToLeft,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.linear);
                }),
          )
        ],
      ),
    );
  }
}
