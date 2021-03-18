import 'package:flutter/material.dart';
import 'package:swipedetector/swipedetector.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Controls Page"),
        backgroundColor: Colors.red,
      ),
      body: SwipeDetector(
        onSwipeRight: () {
          Navigator.pop(context);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // backgroundColor: Colors.red,
          children: <Widget>[
            Text("WELCOME TO CONTROL PAGE",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  height: 3,
                  fontSize: 30,
                  wordSpacing: 1,
                )),
            Text(
              "This is will be the page where you can control play/pause, volume control and all that stuff",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                height: 3,
                fontSize: 25,
                letterSpacing: 5,
                wordSpacing: 10,
              ),
            ),
            Text(
              "Swipe >>> to go back",
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
