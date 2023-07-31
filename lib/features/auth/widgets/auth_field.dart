import 'package:flutter/material.dart';
import 'package:myekigai/theme/pallete.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  String? hintText;

  AuthField({
    Key? key,
    required this.controller,
    this.hintText=""
  }) : super(key: key);

  String? _validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }

    // Modify the phone number validation logic as per your requirement
    // Here, we are checking if the input contains only digits and has a length of 10.
    if (!RegExp(r'^\d{10}$').hasMatch(value)) {
      return 'Please enter a valid 10-digit phone number.';
    }

    return null; // Return null if the input is valid.
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
        contentPadding: const EdgeInsets.all(15),
        hintText: ' Enter your Phone Number',
        hintStyle: const TextStyle(
          fontSize: 16,
        ),
        prefixText: "+91 |", // Display the prefix "+91" in the input field.
      ),
    );
  }
}
