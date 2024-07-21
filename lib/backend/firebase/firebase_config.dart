import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDMksGA-Gd_P8kvSnjL0AcqZZ56WwL_YSg",
            authDomain: "sistema-citas-medicas-mb9jik.firebaseapp.com",
            projectId: "sistema-citas-medicas-mb9jik",
            storageBucket: "sistema-citas-medicas-mb9jik.appspot.com",
            messagingSenderId: "870483455779",
            appId: "1:870483455779:web:230d3b556dc222985be696"));
  } else {
    await Firebase.initializeApp();
  }
}
