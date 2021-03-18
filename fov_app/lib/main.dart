import 'package:flutter/material.dart';
// import 'package:swipedetector/swipedetector.dart';

import 'first_page.dart';
// import 'second_page.dart';
// import 'third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      home: new FirstPage(),
    );
  }
}
