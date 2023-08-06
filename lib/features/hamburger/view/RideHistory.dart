import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        padding: EdgeInsets.all(ScreenUtil().setHeight(20)),
        children: [
          Container(
            height: ScreenUtil().setHeight(100),
            width: ScreenUtil().setWidth(400),
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
          SizedBox(height: ScreenUtil().setHeight(20)),
          _buildRideHistoryEntry(
              'Scan and Go',
              'Rohini 19 Eki-Zone',
              'Connaught Place Eki-Zone',
              '₹80 | 27 July 2023, 10:45 am',
              false),
          SizedBox(height: ScreenUtil().setHeight(20)),
          _buildRideHistoryEntry(
              'Buddy',
              'Rohini 19 Eki-Zone',
              'Connaught Place Eki-Zone',
              '₹80 | 27 July 2023, 10:45 am',
              false),
          SizedBox(height: ScreenUtil().setHeight(20)),
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
            width:  ScreenUtil().setWidth(400),
            height:  ScreenUtil().setHeight(20),
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
              style:  TextStyle(
                color: Color(0xFF1C1C1C),
                fontSize:  ScreenUtil().setSp(12),
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height:  ScreenUtil().setHeight(8),),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width:  ScreenUtil().setWidth(8)),
              SizedBox(height: ScreenUtil().setHeight(42), width: ScreenUtil().setWidth(25), child: TwoDots()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    origin,
                    style: TextStyle(
                      color: Pallete.textColor,
                      fontSize: ScreenUtil().setSp(15),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    destination,
                    style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: ScreenUtil().setSp(15),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            ],
          ),
           SizedBox(height: ScreenUtil().setHeight(8)),
          Row(
            children: [
               SizedBox(width: ScreenUtil().setWidth(15)),
              Text(
                details,
                style: TextStyle(
                  color: Color(0xFF9C9C9C),
                  fontSize: ScreenUtil().setSp(16),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: ScreenUtil().setHeight(8)),
        ],
      ),
    );
  }
}
