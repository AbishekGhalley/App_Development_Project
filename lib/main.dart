import 'package:flutter/material.dart';
import 'package:myekigai/features/auth/view/login_view.dart';
import 'package:myekigai/features/hamburger/view/ReferEarn.dart';
import 'package:myekigai/features/hamburger/view/help.dart';
import 'package:myekigai/features/onboarding/view/onboarding.dart';
import 'package:myekigai/features/shareride/view/recentlocal.dart';
import 'package:myekigai/features/shareride/view/shareridemap.dart';
import 'package:myekigai/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home: const shareridemap(),
    );
  }
}
