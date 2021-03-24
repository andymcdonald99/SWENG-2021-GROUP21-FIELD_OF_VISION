import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const blue_grad_end = const Color(0xff3A527A); // gradient color 1
    const blue_grad_start = const Color(0xff3E75AC); // gradient color 2

    return Container(
      decoration: BoxDecoration(
        // responsible for the gradient background
        gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topRight,
            stops: [0.3, 1, 0.3],
            colors: [blue_grad_start, blue_grad_end, blue_grad_start]),

        // responsible for the transclucentimage in the background
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.2), BlendMode.dstATop),
          // change the image in here to change the background image
          image: AssetImage(
            "images/tablet_transparent.png",
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Container(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    // responsible for the logo
                    Image.asset(
                      "images/fov_logo_transparent.png",
                      // fit: BoxFit.fitWidth,
                      width: 200.0,
                      height: 190.0,
                    ),
                    // responsible for the text below the logo
                    Image.asset(
                      "images/fov_text_transparent.png",
                      // fit: BoxFit.fitWidth,
                      width: 400.0,
                      height: 30.0,
                    ),
                  ],
                ),
              ),
            ),

            // padding so that the button gets pushed down makesure
            // to use some parameter rather than a value
            Padding(
              padding: EdgeInsets.all(270.0),
            ),

            // responsible for the button
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              elevation: 10.0,
              minWidth: 245.0,
              height: 85,
              color: Colors.white,
              child: new Text('Get Started',
                  style: GoogleFonts.openSans(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff3D71A7))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
            ),
            // responsible for center alignment
            Expanded(
              child: Center(),
            ),
          ],
        ),
      ),
    );
  }
}
