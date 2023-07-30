import 'package:flutter/material.dart';
import 'package:myekigai/constants/assets_constants.dart';
import 'package:myekigai/features/hamburger/view/Navbar.dart';
import 'package:myekigai/features/homescreen/view/home_view.dart';
import 'package:myekigai/features/shareride/view/shareridemap.dart';
import 'package:myekigai/theme/pallete.dart';


class driverdetails extends StatefulWidget {

  const driverdetails({super.key});

  @override
  State<driverdetails> createState() => _driverdetailsState();
}

class _driverdetailsState extends State<driverdetails> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.66,
        maxChildSize: 0.66,
        minChildSize: 0.365,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                color: Colors.white,
              ),
              width: double.infinity,
              child: ListView(
                padding: const EdgeInsets.all(30),
                controller: scrollController,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Container(
                        height: 3.0,
                        width: 1,
                        color: Colors.white,
                      ),
                      Container(
                    height: 3.0,
                    width: 66,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.5),
                      color: const Color.fromRGBO(225, 225, 225, 1),
                    ),
                  ),
                      Container(
                        height: 3.0,
                        width: 1,
                        color:  Colors.white,

                      ),
                    ]
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Driver Details',
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: "Sen",
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(AssetsConstants.andummyimage),
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Manish Bara",
                            style: TextStyle(
                                fontSize: 21,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "UP-06-JS-82093",
                            style: TextStyle(
                                color: Pallete.geryColor,
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Ather 450X",
                            style: TextStyle(
                                color: Pallete.primaryColor,
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 65,
                            height: 65,
                            decoration: const BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(171, 171, 171, 0.25),
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                                blurRadius: 1,
                              ),
                              BoxShadow(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                                blurRadius: 0,
                              ),
                            ]),
                            alignment: Alignment.center,
                            child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "09",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Montserrat"),
                                  ),
                                  Text("min",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Montserrat"))
                                ]),
                          ),
                          const Text("Pick-up",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Montserrat"))
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    Container(
                        height: 50,
                        width: 300,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(171, 171, 171, 0.25),
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                            blurRadius: 1,
                          ),
                          BoxShadow(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                            blurRadius: 0,
                          ),
                        ]),
                        alignment: Alignment.center,
                        child: const TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Write a message",
                              hintStyle: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12)),
                        )),
                    const Spacer(),
                    Container(
                      height: 28,
                      width: 28,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AssetsConstants.antelephone))),
                    )
                  ]),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Pick-up time",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        "11:05 am",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        "Expected drop-off time",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        "11:45 am",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    color: Pallete.partitionlineColor,
                    thickness: 1,
                    height: 1,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Destination",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        "IIF,DTU",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Total Fare",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        "₹ 140",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Share Trip Status",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Share",
                            style: TextStyle(
                                color: Pallete.primaryColor,
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                  const SizedBox(height: 25,),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(229, 33, 68, 1),
                        ),
                        borderRadius: BorderRadius.circular(6)),
                    child: TextButton(
                      style: const ButtonStyle(
                          splashFactory: NoSplash.splashFactory),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      },
                      child: const Text("Cancle",
                          style: TextStyle(
                              color: Color.fromRGBO(229, 33, 68, 1),
                              fontSize: 21,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Sen")),
                    ),
                  )
                ],
              ));
        });
  }
}
