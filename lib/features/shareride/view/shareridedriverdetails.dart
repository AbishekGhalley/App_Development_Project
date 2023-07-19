import 'package:flutter/material.dart';
import 'package:myekigai/features/shareride/widget/driverdetails.dart';
import 'package:myekigai/features/shareride/widget/shareridemap.dart';
class shareridedriverdetails extends StatelessWidget {
  const shareridedriverdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Stack(
        children: [
          shareridemap(posbottom: 350, posright: 16,isvisible: true,),
          driverdetails()
        ],
      ),
    );
  }
}
