import 'package:flutter/material.dart';
import 'package:myekigai/constants/constants.dart';
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
            SizedBox(height: 16),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Choose the mode of payment.',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    color: Pallete.geryColor,
                  ),
                )),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset(AssetsConstants.ancreditcard),
                  SizedBox(width: 8),
                  Text(
                    'eKI - wallet',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                height: 1,
                thickness: 1,
                color: Pallete.partitionlineColor,
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
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
                        AssetsConstants.angooglepay,
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 10),
                      Text('Google Play',style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                        fontSize: 21
                      ),),
                    ],
                  ),
                )),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
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
                        AssetsConstants.anphonepay,
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 10),
                      Text('Phone Pe',style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                          fontSize: 21
                      )),
                    ],
                  ),
                )),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
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
                        AssetsConstants.anupi,
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 10),
                      Text('UPI',style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                          fontSize: 21
                      )),
                    ],
                  ),
                )),
            Spacer(),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: const ListTile(
                      title: Text(
                        'Swapping Charges',
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          color: Pallete.geryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                        ),
                      ),
                      trailing: Text(
                        '\₹10.00',    style: TextStyle(
                          fontFamily: "Sen",
                          color:Color(0xFF494949),
                          fontWeight: FontWeight.w400,
                          fontSize: 16
                      ),
                      ),
                      // contentPadding: EdgeInsets.symmetric(vertical: -14.0),
                    ),
                  ),
                  Container(
                    child: const ListTile(
                      title: Text(
                        'Taxes',
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          color: Pallete.geryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: Text(
                        '\₹1.00',style: TextStyle(
                          fontFamily: "Sen",
                          color:Color(0xFF494949),
                          fontWeight: FontWeight.w400,
                          fontSize: 16
                      ),
                      ),
                      // contentPadding: EdgeInsets.symmetric(vertical: 4.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: Pallete.partitionlineColor,
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'Total',
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          color: Pallete.geryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    trailing: Text('\₹11.00',
                      style: TextStyle(
                          fontFamily: "Sen",
                          color: Pallete.textColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 21
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  CustomButton(
                    text: "Continue",
                    onPressed: () {},
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            ),
          ],
        ));
  }
}

void main() {
  runApp(MaterialApp(home: PaymentScreen()));
}