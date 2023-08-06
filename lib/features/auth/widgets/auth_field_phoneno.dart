import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myekigai/theme/pallete.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  String? hintText;

  AuthField({Key? key, required this.controller, this.hintText = ""})
      : super(key: key);

  String? _validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }
    if (!RegExp(r'^\d{10}$').hasMatch(value)) {
      return 'Please enter a valid 10-digit phone number.';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      controller: controller,
      validator: _validatePhoneNumber, // Custom validation function
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(
            color: Pallete.primaryColor,
            width: 3,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(
            color: Pallete.primaryColor,
            width: 1,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(15),
            vertical: ScreenUtil().setWidth(15)),
        hintText: ' Enter your Phone Number',
        hintStyle: TextStyle(
          fontSize: ScreenUtil().setSp(16),
        ),
        prefixText: "+91 |", // Display the prefix "+91" in the input field.
      ),
    );
  }
}
