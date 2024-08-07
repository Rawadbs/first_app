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
    apiKey: 'AIzaSyC41ntYRGjfomA_O_W_Z0_Gr9JR-Dk13c8',
    appId: '1:537768687582:web:ec42f71ec091f5256d4f4f',
    messagingSenderId: '537768687582',
    projectId: 'test-1e2b3',
    authDomain: 'test-1e2b3.firebaseapp.com',
    storageBucket: 'test-1e2b3.appspot.com',
    measurementId: 'G-SDTNJ62Z4M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1NOHshJLQH0nUBrNweCGt12MY7sMa4VI',
    appId: '1:537768687582:android:45fd21af6be7f1986d4f4f',
    messagingSenderId: '537768687582',
    projectId: 'test-1e2b3',
    storageBucket: 'test-1e2b3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDdXx9Zcti39yEfPKLFQvzTJSW0DvtFLJc',
    appId: '1:537768687582:ios:4010c5ea85f5d0046d4f4f',
    messagingSenderId: '537768687582',
    projectId: 'test-1e2b3',
    storageBucket: 'test-1e2b3.appspot.com',
    iosBundleId: 'com.example.firstApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDdXx9Zcti39yEfPKLFQvzTJSW0DvtFLJc',
    appId: '1:537768687582:ios:4010c5ea85f5d0046d4f4f',
    messagingSenderId: '537768687582',
    projectId: 'test-1e2b3',
    storageBucket: 'test-1e2b3.appspot.com',
    iosBundleId: 'com.example.firstApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC41ntYRGjfomA_O_W_Z0_Gr9JR-Dk13c8',
    appId: '1:537768687582:web:c46f0e92320524206d4f4f',
    messagingSenderId: '537768687582',
    projectId: 'test-1e2b3',
    authDomain: 'test-1e2b3.firebaseapp.com',
    storageBucket: 'test-1e2b3.appspot.com',
    measurementId: 'G-W7938M0VCG',
  );
}
