import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAcumpim6nK2UeCF2OnLRnawHVxfQP5c1c",
            authDomain: "expoepi-31165.firebaseapp.com",
            projectId: "expoepi-31165",
            storageBucket: "expoepi-31165.appspot.com",
            messagingSenderId: "1015670076791",
            appId: "1:1015670076791:web:e0eb1c6015069f95315d72"));
  } else {
    await Firebase.initializeApp();
  }
}
