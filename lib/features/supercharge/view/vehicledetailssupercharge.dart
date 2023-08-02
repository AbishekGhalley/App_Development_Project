import 'package:flutter/material.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/supercharge/view/supercharge_payment.dart';
import 'package:myekigai/reusables/TopAppbar.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/theme/pallete.dart';

class details_supercharge extends StatefulWidget {
  const details_supercharge({Key? key}) : super(key: key);

  @override
  State<details_supercharge> createState() => _details_superchargeState();
}

class _details_superchargeState extends State<details_supercharge> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedvehicle;
  List<String> vehicleoptions = [
    'Ampere - Primus',
    'Ola - S1 Pro',
    'Ather - 450X',
    'MYeKIGAI current ride'
  ];
  double? _slidervalue;

  @override
  void initState() {
    super.initState();
    vehicleoptions = vehicleoptions.map((value) => value.trim()).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(toptitle: "Supercharge"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Text(
              "Vehicle Details",
              style: TextStyle(
                  color: Pallete.textColor,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Form(
              key: _formKey,
              child: Expanded(
                  child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        padding: EdgeInsets.all(10),
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
                        width: double.infinity,
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                              hintText: "Choose Vehicle",
                              hintStyle: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 16,
                                  color: Pallete.geryColor,
                                  fontWeight: FontWeight.w500),
                              border: InputBorder.none),
                          value: _selectedvehicle,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedvehicle = newValue;
                            });
                          },
                          items: vehicleoptions
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                          padding: EdgeInsets.all(10),
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
                          child: DropdownButtonFormField<double>(
                            decoration: InputDecoration(
                                hintText: "Current Charging %",
                                hintStyle: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    color: Pallete.geryColor,
                                    fontWeight: FontWeight.w500),
                                border: InputBorder.none),
                            value: _slidervalue,
                            onChanged: (double? newvalue) {
                              setState(() {
                                _slidervalue = newvalue!;
                              });
                            },
                            items: List.generate(101, (index) {
                              double value = index.toDouble();
                              return DropdownMenuItem<double>(
                                value: value,
                                child: Text(value.toStringAsFixed(0)),
                              );
                            }),
                          ))),
                  const Spacer(),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Image(
                                    width: 16,
                                    height: 16,
                                    image: AssetImage(
                                        SuperChargeAssets.anquestion)),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Can’t find your vehicle?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      fontFamily: "Montserrat",
                                      color: Pallete.geryColor),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    "Add Here",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w500,
                                        color: Pallete.primaryColor,
                                        decoration: TextDecoration.underline),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomButton(
                              text: "Continue",
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PaymentScreen()));
                              })
                        ],
                      )),
                ],
              )))
        ],
      ),
    );
  }
}
