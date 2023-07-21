import 'package:flutter/material.dart';
import 'package:myekigai/constants/assets_constants.dart';
import 'package:myekigai/features/hamburger/view/Myvehicles.dart';
import 'package:myekigai/features/hamburger/view/Notification.dart';
import 'package:myekigai/features/hamburger/view/Profile.dart';
import 'package:myekigai/features/hamburger/view/RideHistory.dart';
import 'package:myekigai/features/hamburger/view/Settings.dart';
import 'package:myekigai/features/hamburger/view/Wallet.dart';
import 'package:myekigai/features/hamburger/view/help.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
            height: 260,
            color: Colors.white,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              const SizedBox(height: 50),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 95,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(AssetsConstants.db),
                  ),
                ),
              ),
              const Text(
                "Devesh",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                  fontFamily: 'Montserrat',
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: const Text(
                      "View Profile   ",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.lightBlue,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Profile()));
                    },
                  ),
                  Container(
                      height: 29,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.all(7.0),
                        child: Text('New',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                            )),
                      )),
                ],
              ),
              const SizedBox(height: 11),
              const Divider(
                color: Color(0xFFE6E6E6),
                thickness: 1,
              ),
            ])),
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: [
              ListTile(
                leading: Image.asset(AssetsConstants.card),
                title: const Text(
                  'Wallets',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontFamily: 'Montserrat',
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Wallet()));
                },
              ),
              ListTile(
                leading: Image.asset(AssetsConstants.motorbike),
                title: const Text(
                  'My Vehicles',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontFamily: 'Montserrat',
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyVehicles()));
                },
              ),
              ListTile(
                leading: Image.asset(AssetsConstants.history),
                title: const Text(
                  'Ride History',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontFamily: 'Montserrat',
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RideHistory()));
                },
              ),
              ListTile(
                  leading: Image.asset(AssetsConstants.notification),
                  title: const Text(
                    'Notifications',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationScreen()));
                  }),
              ListTile(
                leading: Image.asset(AssetsConstants.star),
                title: const Text(
                  'Rewards',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontFamily: 'Montserrat',
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset(AssetsConstants.heart),
                title: const Text(
                  'Favourite',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontFamily: 'Montserrat',
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                  leading: Image.asset(AssetsConstants.help),
                  title: const Text(
                    'Help',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Help()));
                  }),
              ListTile(
                  leading: Image.asset(AssetsConstants.setting),
                  title: const Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Settings()));
                  }),
              const Divider(color: Color(0xFFE6E6E6), thickness: 2),
              ListTile(
                leading: Image.asset(AssetsConstants.steeringwheel),
                title: const Text(
                  'Be a Buddy',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
