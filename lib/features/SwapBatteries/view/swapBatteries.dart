import 'package:flutter/material.dart';
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
            child:Container(
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
            child: ListTile(
              leading: Text(
                'Old Battery No.',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    color: Pallete.geryColor),
              ),
              trailing: IconButton(
                icon: Icon(Icons.camera_alt_outlined),
                onPressed: () {
                  // TODO: Implement camera functionality
                },
              ),
            ),
          ),),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child:Container(
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
            child: ListTile(
              leading: Text(
                'New Battery No.',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    color: Pallete.geryColor),
              ),
              trailing: IconButton(
                icon: Icon(Icons.camera_alt_outlined),
                onPressed: () {
                  // TODO: Implement camera functionality
                },
              ),
            ),
          ),),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: CustomButton(
                text: "Pay & Swap",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentScreen()));
                }),
          )
        ],
      ),
    );
  }
}
