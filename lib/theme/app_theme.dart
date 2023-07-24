import 'package:flutter/material.dart';
import 'package:myekigai/theme/pallete.dart';

class AppTheme {
  static ThemeData theme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Pallete.backgroundColor,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Pallete.textColor, // Set the color of the back arrow icon
        ),
        centerTitle: true,
        backgroundColor: Pallete.backgroundColor,
        elevation: 0),
    // textTheme: TextTheme(titleLarge: TextStyle()),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Pallete.primaryColor,
    ),
  );
}
