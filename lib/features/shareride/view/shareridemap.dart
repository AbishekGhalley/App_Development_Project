import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/reusables/ControllerDrawer.dart';
import 'package:myekigai/reusables/Navbar.dart';
import 'package:myekigai/features/shareride/widget/bottommodalsheet.dart';
import 'package:myekigai/features/shareride/widget/driverdetails.dart';
import 'package:myekigai/features/shareride/widget/searchbar.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/theme/pallete.dart';

class shareridemap extends StatefulWidget {
  const shareridemap({super.key});

  @override
  State<shareridemap> createState() => _shareridemapState();
}

class _shareridemapState extends State<shareridemap> {
  bool isdetails = false;
  bool isvisible = false;
  double posbottom = 180;
  void updateisdetails(bool sdetails) {
    setState(() {
      isdetails = sdetails;
    });
    setState(() {
      posbottom = 330;
    });
    setState(() {
      isvisible = !isvisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ControllerDrawer drawercontroller =Get.put(ControllerDrawer());

    return Scaffold(
      drawer: Navbar(scaffoldKey: drawercontroller.scaffoldkey.value,),
      key: drawercontroller.scaffoldkey.value,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              GlobalAssets.imMap,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top:
                MediaQuery.of(context).padding.top + ScreenUtil().setHeight(15),
            left: ScreenUtil().setWidth(20),
            right: ScreenUtil().setWidth(20),
            child: CustomSearchBar(),
          ),
          Positioned(
            bottom: ScreenUtil().setHeight(posbottom),
            right: ScreenUtil().setWidth(16),
            child: Column(
              children: [
                IconButton(
                  icon: Image.asset(GlobalAssets.locate),
                  onPressed: () {
                    // Handle favorite icon press
                  },
                ),
                IconButton(
                  icon: Image.asset(GlobalAssets.ekizone),
                  onPressed: () {
                    // Handle share icon press
                  },
                ),
                Visibility(
                    visible: isvisible,
                    child: IgnorePointer(
                        ignoring: !isvisible,
                        child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(GlobalAssets.ansos))))
              ],
            ),
          ),
          if (!isdetails)
            Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.18,
                    padding: EdgeInsets.symmetric(
                      vertical: ScreenUtil().setHeight(18),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(16),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.info_outline_rounded),
                                SizedBox(
                                  width: ScreenUtil().setWidth(6),
                                ),
                                Text(
                                  "Whom would you like to share your ride with?",
                                  style: TextStyle(
                                      fontFamily: "Sen",
                                      color: Pallete.geryColor,
                                      fontSize: ScreenUtil().setSp(15),
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.018,
                          ),
                          CustomButton(
                              text: "Continue",
                              onPressed: () {
                                showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return bottommodalsheet(updateisdetails);
                                  },
                                );
                              })
                        ]))),
          if (isdetails) driverdetails()
        ],
      ),
    );
  }
}
