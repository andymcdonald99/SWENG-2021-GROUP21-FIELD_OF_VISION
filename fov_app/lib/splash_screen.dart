import 'dart:async';
import 'package:flutter/material.dart';

import 'first_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

// private state to ensure we don't have the splash screen only when the app starts
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => new FirstPage())));
  }

  @override
  Widget build(BuildContext context) {
    const blue_grad_end = const Color(0xff3A527A); // gradient color 1
    const blue_grad_start = const Color(0xff3E75AC); // gradient color 2

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topRight,
              stops: [0.3, 1, 0.3],
              colors: [blue_grad_start, blue_grad_end, blue_grad_start])),
      child: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                "images/fov_logo_transparent.png",
                // fit: BoxFit.fitWidth,
                width: 400.0,
                height: 150.0,
              ),
              Image.asset(
                "images/fov_text_transparent.png",
                // fit: BoxFit.fitWidth,
                width: 400.0,
                height: 130.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
