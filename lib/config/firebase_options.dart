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
    apiKey: 'AIzaSyCmpgP1_mSajRQfkZZJgf6p89fgrumKyWM',
    appId: '1:32977873180:web:bbfda27eb70f48d9e5b2d9',
    messagingSenderId: '32977873180',
    projectId: 'github-analysis-6b243',
    authDomain: 'github-analysis-6b243.firebaseapp.com',
    databaseURL: 'https://github-analysis-6b243-default-rtdb.firebaseio.com',
    storageBucket: 'github-analysis-6b243.appspot.com',
    measurementId: 'G-4579VNRHKE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDFQNTha6F151cZ5BtyaS5fIcXf5FVWWdw',
    appId: '1:32977873180:android:f4372f3e7d0c7ddee5b2d9',
    messagingSenderId: '32977873180',
    projectId: 'github-analysis-6b243',
    databaseURL: 'https://github-analysis-6b243-default-rtdb.firebaseio.com',
    storageBucket: 'github-analysis-6b243.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDCoPcKF5wM7wH5mQcZ8fEAA66pH4zxAHk',
    appId: '1:32977873180:ios:d6a19b3aa198038de5b2d9',
    messagingSenderId: '32977873180',
    projectId: 'github-analysis-6b243',
    databaseURL: 'https://github-analysis-6b243-default-rtdb.firebaseio.com',
    storageBucket: 'github-analysis-6b243.appspot.com',
    iosBundleId: 'com.example.git',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDCoPcKF5wM7wH5mQcZ8fEAA66pH4zxAHk',
    appId: '1:32977873180:ios:7ef367dcd8fd34c5e5b2d9',
    messagingSenderId: '32977873180',
    projectId: 'github-analysis-6b243',
    databaseURL: 'https://github-analysis-6b243-default-rtdb.firebaseio.com',
    storageBucket: 'github-analysis-6b243.appspot.com',
    iosBundleId: 'com.example.git.RunnerTests',
  );
}
