import 'package:flutter/material.dart';
import 'package:myekigai/Authentication_repo/authentication.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/hamburger/view/Myvehicles.dart';
import 'package:myekigai/features/hamburger/view/Notification.dart';
import 'package:myekigai/features/hamburger/view/Profile.dart';
import 'package:myekigai/features/hamburger/view/ReferEarn.dart';
import 'package:myekigai/features/hamburger/view/RideHistory.dart';
import 'package:myekigai/features/hamburger/view/Settings.dart';
import 'package:myekigai/features/hamburger/view/Wallet.dart';
import 'package:myekigai/features/hamburger/view/help.dart';

class Navbar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const Navbar({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: double.infinity,
              height: 260,
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
                          image: AssetImage(HamAssets.db),
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
              children: [
                ListTile(
                  leading: Image.asset(GlobalAssets.card),
                  title: const Text(
                    'Wallets',
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
                            builder: (context) => const Wallet()));
                  },
                ),
                ListTile(
                  leading: Image.asset(GlobalAssets.motorbike),
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
                  leading: Image.asset(GlobalAssets.history),
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
                    leading: Image.asset(GlobalAssets.notification),
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
                              builder: (context) =>
                                  const NotificationScreen()));
                    }),
                ListTile(
                  leading: Image.asset(GlobalAssets.star),
                  title: const Text(
                    'Rewards',
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
                            builder: (context) => const ReferEarn()));
                  },
                ),
                ListTile(
                  leading: Image.asset(GlobalAssets.heart),
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
                    leading: Image.asset(GlobalAssets.help),
                    title: const Text(
                      'Help',
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
                              builder: (context) => const Help()));
                    }),
                ListTile(
                    leading: Image.asset(GlobalAssets.setting),
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
                const Divider(color: Color(0xFFE6E6E6), thickness: 1),
                ListTile(
                  leading: Image.asset(GlobalAssets.steeringwheel),
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
                ListTile(
                  leading: Image.asset(GlobalAssets.steeringwheel),
                  title: const Text(
                    'Sign Out',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    Authentication.instance.logout();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
