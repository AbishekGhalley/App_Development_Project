import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myekigai/theme/theme.dart';
class TopAppbar extends StatelessWidget implements PreferredSizeWidget{
  final String toptitle;
  Color? bgcolor;
  TopAppbar({super.key,required this.toptitle,this.bgcolor=Colors.white});
@override
Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(  backgroundColor:bgcolor,
      titleSpacing: 0,
      centerTitle: false,
      elevation: 4,
      shadowColor: const Color.fromRGBO(171, 171, 171, 0.25),
      title: Text(
      toptitle,
        style: TextStyle(
          color: Color(0xFF1C1C1C),
          fontSize:ScreenUtil().setSp(21),
          fontFamily: 'Sen',
          fontWeight: FontWeight.w400,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_sharp,
            color: Color(0xFF1C1C1C)),
        onPressed: () {
          Get.back(
          );
        },
      ),);
  }
}
