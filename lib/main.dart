import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myekigai/Authentication_repo/authentication.dart';
import 'package:myekigai/features/auth/view/login_view.dart';
import 'package:myekigai/firebase_options.dart';
import 'package:myekigai/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _initializefirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(420, 910),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: AppTheme.theme,
          home: LoginView(),
        );
      },
    );
  }
}

_initializefirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) {
    Get.put(Authentication());
  }
  );
}
