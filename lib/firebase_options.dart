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
    apiKey: 'AIzaSyAOFpP01T4dC2i09APLrf1yOIjP3sda2TM',
    appId: '1:780276080480:web:0a43e2d1d4c96d27ba4805',
    messagingSenderId: '780276080480',
    projectId: 'caffeinated-nf',
    authDomain: 'caffeinated-nf.firebaseapp.com',
    storageBucket: 'caffeinated-nf.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCal5vsz0D0Wwas_siwYSn-vSdP5VVHSM8',
    appId: '1:780276080480:android:9985d7f7659c0467ba4805',
    messagingSenderId: '780276080480',
    projectId: 'caffeinated-nf',
    storageBucket: 'caffeinated-nf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACfwyJbPB5bvbZCNjMUB4OPNTyA9Zw_p0',
    appId: '1:780276080480:ios:327838ec6365bfceba4805',
    messagingSenderId: '780276080480',
    projectId: 'caffeinated-nf',
    storageBucket: 'caffeinated-nf.appspot.com',
    iosClientId: '780276080480-pmtb0pr1r830cutocae1rvrqrlj6bvga.apps.googleusercontent.com',
    iosBundleId: 'com.madhu.caffeinated.caffeinated',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyACfwyJbPB5bvbZCNjMUB4OPNTyA9Zw_p0',
    appId: '1:780276080480:ios:327838ec6365bfceba4805',
    messagingSenderId: '780276080480',
    projectId: 'caffeinated-nf',
    storageBucket: 'caffeinated-nf.appspot.com',
    iosClientId: '780276080480-pmtb0pr1r830cutocae1rvrqrlj6bvga.apps.googleusercontent.com',
    iosBundleId: 'com.madhu.caffeinated.caffeinated',
  );
}