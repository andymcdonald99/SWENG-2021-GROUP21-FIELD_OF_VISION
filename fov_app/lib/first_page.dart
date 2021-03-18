import 'package:flutter/material.dart';
import 'package:swipedetector/swipedetector.dart';

import 'second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("Welcome"),
        backgroundColor: Colors.green,
      ),
      body: SwipeDetector(
        onSwipeLeft: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // backgroundColor: Colors.red,
          children: <Widget>[
            Text("WELCOME TO FOV APP",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  height: 5,
                  fontSize: 30,
                )),
            Text(
              "This is will be the sign up/ login page and stuff",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                height: 3,
                fontSize: 30,
                letterSpacing: 5,
                wordSpacing: 10,
              ),
            ),
            Text(
              "Swipe <<< to get started",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                height: 3,
                fontSize: 30,
                letterSpacing: 5,
                wordSpacing: 10,
              ),
            ),
            Expanded(
              child: Center(),
            ),
          ],
        ),
      ),
    );
  }
}
