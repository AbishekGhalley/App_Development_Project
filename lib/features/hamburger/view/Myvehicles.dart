import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myekigai/features/hamburger/view/content_model_myvehicles.dart';
import 'package:myekigai/features/hamburger/widgets/Add_btn.dart';
import 'package:myekigai/features/hamburger/widgets/myvehiclestructure.dart';
import 'package:myekigai/reusables/TopAppbar.dart';

class MyVehicles extends StatelessWidget {
  const MyVehicles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(toptitle: "My Vehicles"),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(20),
                vertical: ScreenUtil().setHeight(20)),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3FABABAB),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: ListTile(
                  title: Text(
                    'Add another vehicle',
                    style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: ScreenUtil().setSp(16),
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Addbtn()),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: vehicle.length,
                  itemBuilder: (BuildContext context, int index) {
                    return vehiclestructure(
                      title: vehicle[index].title,
                      imagepath: vehicle[index].imagepath,
                      subtitle: vehicle[index].subtitle,
                      time: vehicle[index].time,
                    );
                  })),
        ],
      ),
    );
  }
}
