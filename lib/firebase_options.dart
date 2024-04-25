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
    apiKey: 'AIzaSyBtz6lmwmYOxST6N8rUImHl6AUWikrCUQY',
    appId: '1:835289566272:web:8eb2fc1e22ef87e71a23a5',
    messagingSenderId: '835289566272',
    projectId: 'chatapp-790de',
    authDomain: 'chatapp-790de.firebaseapp.com',
    storageBucket: 'chatapp-790de.appspot.com',
    measurementId: 'G-5NJFRYWG5Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAcTzy5GtTy4YVsWk9yp18_dAO2MT80suI',
    appId: '1:835289566272:android:8ed47b2bc57e80e01a23a5',
    messagingSenderId: '835289566272',
    projectId: 'chatapp-790de',
    storageBucket: 'chatapp-790de.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDl2TbnEWVzcyFokyYp7Z63ny0BQVJahS8',
    appId: '1:835289566272:ios:d91f4e4106b4b8d61a23a5',
    messagingSenderId: '835289566272',
    projectId: 'chatapp-790de',
    storageBucket: 'chatapp-790de.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDl2TbnEWVzcyFokyYp7Z63ny0BQVJahS8',
    appId: '1:835289566272:ios:d91f4e4106b4b8d61a23a5',
    messagingSenderId: '835289566272',
    projectId: 'chatapp-790de',
    storageBucket: 'chatapp-790de.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBtz6lmwmYOxST6N8rUImHl6AUWikrCUQY',
    appId: '1:835289566272:web:34518afc0bb125841a23a5',
    messagingSenderId: '835289566272',
    projectId: 'chatapp-790de',
    authDomain: 'chatapp-790de.firebaseapp.com',
    storageBucket: 'chatapp-790de.appspot.com',
    measurementId: 'G-LN8RDF48VS',
  );
}
