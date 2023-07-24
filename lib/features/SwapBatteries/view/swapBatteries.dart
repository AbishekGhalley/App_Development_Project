import 'package:flutter/material.dart';
import 'package:myekigai/features/SwapBatteries/view/swap_batteries_payment.dart';

class MyScreen extends StatelessWidget {
  static route() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => MyScreen(),
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text('Swap Battery'),
          ),
          Container(
            width: 800,
            height: 1,
            color: Colors.grey[300],
          ),
          ListTile(
            leading: Text('Old Battery No.'),
            trailing: IconButton(
              icon: Icon(Icons.camera_alt_outlined),
              onPressed: () {
                // TODO: Implement camera functionality
              },
            ),
          ),
          ListTile(
            leading: Text('New Battery No.'),
            trailing: IconButton(
              icon: Icon(Icons.camera_alt_outlined),
              onPressed: () {
                // TODO: Implement camera functionality
              },
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
              Navigator.push(context, PaymentScreen.route());
            },
            child: Text('Continue'),
          ),
        ),
      ),
    );
  }
}
