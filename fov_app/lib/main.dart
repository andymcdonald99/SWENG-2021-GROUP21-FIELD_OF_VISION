import 'package:flutter/material.dart';
import 'package:swipedetector/swipedetector.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      home: new FirstRoute(),
    );
  }
}

class FirstRoute extends StatelessWidget {
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
            MaterialPageRoute(builder: (context) => SecondRoute()),
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

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Container(
          child: Image.asset(
            "images/logowhite.png",
            fit: BoxFit.fitWidth,
          ),
        ),
        backgroundColor: Colors.grey,
      ),
      body: _body(context),
    );
  }

  Widget _body(context) {
    return Scrollbar(
      child: ListView(
        children: List.generate(9, (int i) {
          return Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdRoute()),
                  );
                  SwipeDetector(
                    onSwipeRight: () {
                      Navigator.pop(context);
                    },
                    onSwipeLeft: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdRoute()),
                      );
                    },
                  );
                },
                child: new Image.asset(
                  "images/img$i.jpg",
                  fit: BoxFit.fitWidth,
                  // width: 400.0,
                  // height: 180.0,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
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
