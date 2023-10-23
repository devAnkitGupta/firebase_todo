import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw 'DefaultFirebaseOptions are not supported for this platform.';
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBAOFid-cSfLUklDiW1xoJNZtnzPbL4jGo',
    appId: '1:1034758468943:android:85676407c2bed390e6813a',
    messagingSenderId: '1034758468943',
    projectId: 'todo-c6921',
    storageBucket: 'todo-c6921.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCYZjw97Msikzra-w678mgr72LSs7ZHHEs',
    appId: '1:1034758468943:ios:babb27b5c56d57f3e6813a',
    messagingSenderId: '1034758468943',
    projectId: 'todo-c6921',
    storageBucket: 'todo-c6921.appspot.com',
    iosBundleId: 'com.example.firebaseTodo',
  );
}
