import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myekigai/constants/assets_constants.dart';
import 'package:myekigai/reusables/Navbar.dart';
import 'package:myekigai/features/shareride/widget/bottommodalsheet.dart';
import 'package:myekigai/features/shareride/widget/driverdetails.dart';
import 'package:myekigai/features/shareride/widget/searchbar.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/reusables/key_navbar.dart';
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
    return Scaffold(
      drawer: Navbar(scaffoldKey: global_navbar.sharescaffoldKey),
      key: global_navbar.sharescaffoldKey,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              AssetsConstants.anmap,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 15,
            left: 20,
            right: 20,
            child:CustomSearchBar(scaffoldKey: global_navbar.sharescaffoldKey) ,
          ),
          Positioned(
            bottom: posbottom,
            right: 16,
            child: Column(
              children: [
                IconButton(
                  icon: Image.asset(AssetsConstants.locate),
                  onPressed: () {
                    // Handle favorite icon press
                  },
                ),
                IconButton(
                  icon: Image.asset(AssetsConstants.ekizone),
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
                            icon:SvgPicture.asset(AssetsConstants.ansos))))
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
                    height: 130,
                    padding: EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Icon(Icons.info_outline_rounded),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "Whom would you like to share your \n ride with?",
                                  style: TextStyle(
                                      fontFamily: "Sen",
                                      color: Pallete.geryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
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
