import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBjlr5EJt3fs1H92lVgg_l-d5RTdLGJMcs",
            authDomain: "buzzer-dd3cc.firebaseapp.com",
            projectId: "buzzer-dd3cc",
            storageBucket: "buzzer-dd3cc.appspot.com",
            messagingSenderId: "721427766712",
            appId: "1:721427766712:web:3c5b9d4f1f1c70732f834d",
            measurementId: "G-D2M72TKG2B"));
  } else {
    await Firebase.initializeApp();
  }
}
