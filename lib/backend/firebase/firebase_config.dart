import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBPh2wfaM6SDuSjy5q5xQjfQE047-aIpLs",
            authDomain: "muslimplanner-52853.firebaseapp.com",
            projectId: "muslimplanner-52853",
            storageBucket: "muslimplanner-52853.appspot.com",
            messagingSenderId: "784530293437",
            appId: "1:784530293437:web:9dea0817db26eeaf21add4",
            measurementId: "G-LVWW260K7H"));
  } else {
    await Firebase.initializeApp();
  }
}
