import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///

/// ```dart
/// import 'firebase_options.dart';

//  await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
//  );

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDo8X50BarrHroeCfPO6n-3Nf9teJnIg6U',
    appId: '1:791036337962:android:d6287e2aa0ea9645708853',
    messagingSenderId: '791036337962',
    projectId: 'hewkai-e7fc6',
    storageBucket: 'hewkai-e7fc6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDdhEUhEaK_HCE3KpxghX_gh3PxYB3jZm0',
    appId: '1:791036337962:ios:aa967a397f21f7d6708853',
    messagingSenderId: '791036337962',
    projectId: 'hewkai-e7fc6',
    storageBucket: 'hewkai-e7fc6.appspot.com',
    iosBundleId: 'com.example.foodlyUi',
  );
}
