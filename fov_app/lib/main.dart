import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      home: new SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
