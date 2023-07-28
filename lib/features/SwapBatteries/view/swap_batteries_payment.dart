import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  static route() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => PaymentScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    );
  }

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _selectedPaymentOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Payment'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              'Select Payment Option',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.credit_card, color: Colors.grey),
                SizedBox(width: 8),
                Text(
                  'eKI - Wallet',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
            ListTile(
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
                  Icon(Icons.play_circle_filled, color: Colors.green),
                  SizedBox(width: 8),
                  Text('Google Play'),
                ],
              ),
            ),
            ListTile(
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
                  Icon(Icons.phone_android, color: Colors.blue),
                  SizedBox(width: 8),
                  Text('Phone Pe'),
                ],
              ),
            ),
            ListTile(
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
                  Icon(Icons.account_balance, color: Colors.orange),
                  SizedBox(width: 8),
                  Text('UPI'),
                ],
              ),
            ),
            Spacer(),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListTile(
                    title: Text('Swapping Charges'),
                    trailing: Text('\₹10.00'),
                  ),
                  ListTile(
                    title: Text('Taxes'),
                    trailing: Text('\₹1.00'),
                  ),
                  Container(
                    width: 800,
                    height: 1,
                    color: Colors.grey[300],
                  ),
                  ListTile(
                    title: Text(
                      'Total',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text('\₹11.00',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      // TODO
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 32.0),
                      child: Text('Continue'),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.6, 50.0),
                    ),
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Screen'),
      ),
      body: Column(
        children: [
          // Add your widgets here
          Spacer(),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ElevatedButton(
              onPressed: () {
                // Add your button on pressed code here
              },
              child: Text('Continue'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: ElevatedButton(
            onPressed: () {
              // Add your button on pressed code here
            },
            child: Text('Continue'),
          ),
        ),
      ),
    );
  }
}
