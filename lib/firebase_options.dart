// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDHPatqMsXqtC6RidHRAarOO-sO_RELk-w',
    appId: '1:525028330171:web:d4cf7691886cc818c5f79e',
    messagingSenderId: '525028330171',
    projectId: 'wander-10c5c',
    authDomain: 'wander-10c5c.firebaseapp.com',
    storageBucket: 'wander-10c5c.firebasestorage.app',
    measurementId: 'G-8J8G4WZ52X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC9VcZWajcPDV4iXYQKfONU7RvXELlQCP0',
    appId: '1:525028330171:android:66ff62b3dc2dbbb6c5f79e',
    messagingSenderId: '525028330171',
    projectId: 'wander-10c5c',
    storageBucket: 'wander-10c5c.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6rB9Swx7hE9-LUVYLCnUwAUA1o5OesDY',
    appId: '1:525028330171:ios:02d288048a6c6369c5f79e',
    messagingSenderId: '525028330171',
    projectId: 'wander-10c5c',
    storageBucket: 'wander-10c5c.firebasestorage.app',
    iosBundleId: 'com.example.travelApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6rB9Swx7hE9-LUVYLCnUwAUA1o5OesDY',
    appId: '1:525028330171:ios:02d288048a6c6369c5f79e',
    messagingSenderId: '525028330171',
    projectId: 'wander-10c5c',
    storageBucket: 'wander-10c5c.firebasestorage.app',
    iosBundleId: 'com.example.travelApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDHPatqMsXqtC6RidHRAarOO-sO_RELk-w',
    appId: '1:525028330171:web:6ad5698ce9def42ec5f79e',
    messagingSenderId: '525028330171',
    projectId: 'wander-10c5c',
    authDomain: 'wander-10c5c.firebaseapp.com',
    storageBucket: 'wander-10c5c.firebasestorage.app',
    measurementId: 'G-F0J7E859F0',
  );
}
