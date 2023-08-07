import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/features/homescreen/view/home_view.dart';
import 'package:myekigai/reusables/TopAppbar.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/theme/pallete.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _selectedPaymentOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopAppbar(
          toptitle: "Payment",
          bgcolor: Color.fromRGBO(235, 254, 230, 1),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(16)),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
                child: Text(
                  'Choose the mode of payment.',
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(16),
                    fontFamily: "Montserrat",
                    color: Pallete.geryColor,
                  ),
                )),
            SizedBox(height: ScreenUtil().setHeight(16)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset(GlobalAssets.ancreditcard),
                  SizedBox(width: 8),
                  Text(
                    'eKI - wallet',
                    style: TextStyle(
                      fontSize:  ScreenUtil().setSp(20),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(16)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:  ScreenUtil().setWidth(20)),
              child: Divider(
                height: 1,
                thickness: 1,
                color: Pallete.partitionlineColor,
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal:ScreenUtil().setWidth(10)),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Radio<int>(
                    value: 0,
                    groupValue: _selectedPaymentOption,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedPaymentOption = value!;
                      });
                    },
                  ),
                  title: Row(
                    children: [
                      Image.asset(
                        GlobalAssets.angooglepay,
                        width: ScreenUtil().setWidth(25),
                        height:  ScreenUtil().setWidth(25),
                      ),
                      SizedBox(width:  ScreenUtil().setWidth(10)),
                      Text(
                        'Google Play',
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            fontSize:  ScreenUtil().setSp(21)),
                      ),
                    ],
                  ),
                )),
            Padding(
                padding: EdgeInsets.symmetric(horizontal:  ScreenUtil().setWidth(10)),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Radio<int>(
                    value: 1,
                    groupValue: _selectedPaymentOption,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedPaymentOption = value!;
                      });
                    },
                  ),
                  title: Row(
                    children: [
                      Image.asset(
                        GlobalAssets.anphonepay,
                        width:  ScreenUtil().setWidth(25),
                        height:  ScreenUtil().setWidth(25),
                      ),
                      SizedBox(width: ScreenUtil().setWidth(10)),
                      Text('Phone Pe',
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                              fontSize: ScreenUtil().setSp(21))),
                    ],
                  ),
                )),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10)),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Radio<int>(
                    value: 2,
                    groupValue: _selectedPaymentOption,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedPaymentOption = value!;
                      });
                    },
                  ),
                  title: Row(
                    children: [
                      Image.asset(
                        GlobalAssets.anupi,
                        width:  ScreenUtil().setWidth(25),
                        height:  ScreenUtil().setWidth(25),
                      ),
                      SizedBox(width: ScreenUtil().setWidth(10)),
                      Text('UPI',
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                              fontSize: ScreenUtil().setSp(21))),
                    ],
                  ),
                )),
            Spacer(),
            Container(
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(16)),
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Swapping Charges',
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    color: Pallete.geryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: ScreenUtil().setSp(16)),
                              ),
                              Text(
                                '\₹10.00',
                                style: TextStyle(
                                    fontFamily: "Sen",
                                    color: Color(0xFF494949),
                                    fontWeight: FontWeight.w400,
                                    fontSize: ScreenUtil().setSp(16)),
                              )
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Taxes',
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                color: Pallete.geryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '\₹1.00',
                              style: TextStyle(
                                  fontFamily: "Sen",
                                  color: Color(0xFF494949),
                                  fontWeight: FontWeight.w400,
                                  fontSize: ScreenUtil().setSp(16)),
                            ),
                          ],
                        ),
                        SizedBox(height: ScreenUtil().setHeight(10)),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Pallete.partitionlineColor,
                        ),
                        SizedBox(height: ScreenUtil().setHeight(10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Pallete.geryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize:ScreenUtil().setSp(20)),
                            ),
                            Text(
                              '\₹11.00',
                              style: TextStyle(
                                  fontFamily: "Sen",
                                  color: Pallete.textColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: ScreenUtil().setSp(21)),
                            ),
                          ],
                        )
                      ])),
                  SizedBox(height: ScreenUtil().setHeight(10)),
                  CustomButton(
                    text: "Continue",
                    onPressed: () {
                     Get.offAll(()=>HomeScreen(),transition: Transition.rightToLeft,
                         duration: Duration(milliseconds: 500),
                         curve: Curves.linear);
                    },
                  ),
                  SizedBox(height: ScreenUtil().setHeight(16)),
                ],
              ),
            ),
          ],
        ));
  }
}
