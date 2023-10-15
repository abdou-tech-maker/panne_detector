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
    apiKey: 'AIzaSyCVfb4_ikn0cVAWI-Ln7RfbkMlCY2LmksQ',
    appId: '1:966248285377:web:345282150425f039c40040',
    messagingSenderId: '966248285377',
    projectId: 'weekly-planner-7961e',
    authDomain: 'weekly-planner-7961e.firebaseapp.com',
    storageBucket: 'weekly-planner-7961e.appspot.com',
    measurementId: 'G-GRZ188VR0E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAq6TUnc2hqtN4j4dc9XbWygAczkA0GGQg',
    appId: '1:966248285377:android:8c134397f80af0ffc40040',
    messagingSenderId: '966248285377',
    projectId: 'weekly-planner-7961e',
    storageBucket: 'weekly-planner-7961e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBjo0WPgxER61-QUn6YO-f3MwB7v2iX46g',
    appId: '1:966248285377:ios:916b23a1f34fca69c40040',
    messagingSenderId: '966248285377',
    projectId: 'weekly-planner-7961e',
    storageBucket: 'weekly-planner-7961e.appspot.com',
    iosBundleId: 'com.example.panneDetector',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBjo0WPgxER61-QUn6YO-f3MwB7v2iX46g',
    appId: '1:966248285377:ios:e060de3c8905df69c40040',
    messagingSenderId: '966248285377',
    projectId: 'weekly-planner-7961e',
    storageBucket: 'weekly-planner-7961e.appspot.com',
    iosBundleId: 'com.example.panneDetector.RunnerTests',
  );
}
