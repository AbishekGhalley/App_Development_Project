import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myekigai/constants/assets_constants.dart';
import 'package:myekigai/reusables/TopAppbar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppbar(toptitle: "Setting"),
      body: ListView(
            children: [
              Padding(
                   padding: const EdgeInsets.symmetric(horizontal:20.0,vertical:8),
                child: SizedBox(
                  height: 60,
                  child: ListTile(
                    leading: Image.asset(AssetsConstants.language),
                    title: const Text('Language',style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 21,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),),
                    subtitle:const Text('English',style: TextStyle(
                      color: Color(0xFF9C9C9C),
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                ),
              ),
              Padding(
                   padding: const EdgeInsets.symmetric(horizontal:20.0,vertical:8),
                child: SizedBox(
                  height: 50,
                  child: ListTile(
                    leading: Image.asset(AssetsConstants.lock),
                    title: const Text('Security',style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 21,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                ),
              ),
              Padding(
                   padding: const EdgeInsets.symmetric(horizontal:20.0,vertical:8),
                child: SizedBox(
                  height: 50,
                  child: ListTile(
                    leading: Image.asset(AssetsConstants.manstandingup),
                    title: const Text('Accessibility',style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 21,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                ),
              ),
              Padding(
                   padding: const EdgeInsets.symmetric(horizontal:20.0,vertical:8),
                child: SizedBox(
                  height: 60,
                  child: ListTile(
                    leading: Image.asset(AssetsConstants.brightness),
                    title: const Text('Display',style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 21,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),),
                    subtitle:const Text('Dark map',style: TextStyle(
                      color: Color(0xFF9C9C9C),
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                ),
              ),
              Padding(
                   padding: const EdgeInsets.symmetric(horizontal:20.0,vertical:8),
                child: SizedBox(
                  height: 50,
                  child: ListTile(
                    leading: Image.asset(AssetsConstants.piechart),
                    title: const Row(
                      children: [
                        Text('Share Ride  ',style: TextStyle(
                          color: Color(0xFF1C1C1C),
                          fontSize: 21,
                          fontFamily: 'Sen',
                          fontWeight: FontWeight.w400,
                        ),),
                        Icon(
                          Icons.info_outline,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ],
                    ),
                    trailing: CupertinoSwitch( // Use CupertinoSwitch instead of Switch
                      value: true,
                      onChanged: (value) {},
                      activeColor: const Color(0xFFEFEFEF), // Specify the active color
                      trackColor: const Color(0xFFEFEFEF), // Specify the track color
                    ),
                  ),
                ),
              ),
              const Divider(height: 7.0, color: Colors.black),
              Padding(
                   padding: const EdgeInsets.symmetric(horizontal:20.0,vertical:8),
                child: SizedBox(
                  height: 50,
                  child: ListTile(
                    leading: Image.asset(AssetsConstants.checkmark),
                    title: const Text('Privacy',style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 21,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                ),
              ),
              Padding(
                   padding: const EdgeInsets.symmetric(horizontal:20.0,vertical:8),
                child: SizedBox(
                  height: 50,
                  child: ListTile(
                    leading: Image.asset(AssetsConstants.information),
                    title: const Text('About',style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 21,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                ),
              ),
              Padding(
                   padding: const EdgeInsets.symmetric(horizontal:20.0,vertical:8),
                child: SizedBox(
                  height: 50,
                  child: ListTile(
                    leading: Image.asset(AssetsConstants.hammer),
                    title: const Text('Legal',style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 21,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
