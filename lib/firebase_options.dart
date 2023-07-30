// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC-7T6U5s_4y6y808IpDuimIkeFboZwVhA',
    appId: '1:194226012572:web:f3a35dbb64e1590f5b8859',
    messagingSenderId: '194226012572',
    projectId: 'myekigai-da9c7',
    authDomain: 'myekigai-da9c7.firebaseapp.com',
    storageBucket: 'myekigai-da9c7.appspot.com',
    measurementId: 'G-6V2EJ8DXMT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCz-f0wdw9MKfWZhlZCYz2oIKpwjKcxb6g',
    appId: '1:194226012572:android:dd3851109257255b5b8859',
    messagingSenderId: '194226012572',
    projectId: 'myekigai-da9c7',
    storageBucket: 'myekigai-da9c7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDfpAYDHbaN50PZF4ucbQ8vjm-GLDaGgHo',
    appId: '1:194226012572:ios:4fada67a65c8addb5b8859',
    messagingSenderId: '194226012572',
    projectId: 'myekigai-da9c7',
    storageBucket: 'myekigai-da9c7.appspot.com',
    androidClientId: '194226012572-6p759qh5q997te99jkffd8ggchn1s2vv.apps.googleusercontent.com',
    iosClientId: '194226012572-qh9hmin0as55qgs6lhlr56psej3l2jpm.apps.googleusercontent.com',
    iosBundleId: 'com.example.myekigai',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDfpAYDHbaN50PZF4ucbQ8vjm-GLDaGgHo',
    appId: '1:194226012572:ios:36f37da76140178d5b8859',
    messagingSenderId: '194226012572',
    projectId: 'myekigai-da9c7',
    storageBucket: 'myekigai-da9c7.appspot.com',
    androidClientId: '194226012572-6p759qh5q997te99jkffd8ggchn1s2vv.apps.googleusercontent.com',
    iosClientId: '194226012572-cq03tn7117lb0ibsvh9e95ao6lierlne.apps.googleusercontent.com',
    iosBundleId: 'com.example.myekigai.RunnerTests',
  );
}
