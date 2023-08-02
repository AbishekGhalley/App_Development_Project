import 'package:flutter/material.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/hamburger/widgets/TwoDots.dart';
import 'package:myekigai/reusables/TopAppbar.dart';
import 'package:myekigai/theme/pallete.dart';

class RideHistory extends StatelessWidget {
  const RideHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(toptitle: "Ride History"),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Container(
            height: 100,
            width: 400,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0)),
              image: DecorationImage(
                image: AssetImage(HamAssets.pasted),
                fit: BoxFit.cover,
              ),
            ),
          ),
          _buildRideHistoryEntry('Shared Ride', 'Rohini 19 Eki-Zone',
              'Connaught Place Eki-Zone', '₹80 | 27 July 2023, 10:45 am', true),
          const SizedBox(height: 20.0),
          _buildRideHistoryEntry(
              'Scan and Go',
              'Rohini 19 Eki-Zone',
              'Connaught Place Eki-Zone',
              '₹80 | 27 July 2023, 10:45 am',
              false),
          const SizedBox(height: 20.0),
          _buildRideHistoryEntry(
              'Buddy',
              'Rohini 19 Eki-Zone',
              'Connaught Place Eki-Zone',
              '₹80 | 27 July 2023, 10:45 am',
              false),
          const SizedBox(height: 20.0),
          _buildRideHistoryEntry(
              'Scan and Go',
              'Rohini 19 Eki-Zone',
              'Connaught Place Eki-Zone',
              '₹80 | 27 July 2023, 10:45 am',
              false),
        ],
      ),
    );
  }

  Widget _buildRideHistoryEntry(String title, String origin, String destination,
      String details, bool isfirst) {
    double x = isfirst ? 0 : 10;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(x),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3FABABAB),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 12.0),
            width: 400,
            height: 20,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(x),
                  topRight: Radius.circular(x),
                ),
              ),
              color: const Color(0xFFEEEEEE),
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0xFF1C1C1C),
                fontSize: 12,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 8.0),
              SizedBox(height: 42, width: 25, child: TwoDots()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    origin,
                    style: const TextStyle(
                      color: Pallete.textColor,
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    destination,
                    style: const TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              const SizedBox(width: 15.0),
              Text(
                details,
                style: const TextStyle(
                  color: Color(0xFF9C9C9C),
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
