import 'package:flutter/material.dart';
import 'package:myekigai/theme/pallete.dart';

class Addbtn extends StatelessWidget {
  const Addbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child: const Text(
        'Add+',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Pallete.primaryColor,
          fontSize: 16,
          fontFamily: 'Sen',
          fontWeight: FontWeight.w400,
        ),
      ),);
  }
}
