// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'loginpage.dart';
import 'registerpage1.dart';

class Welcomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff332c62),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -30,
              left: 20,
              child: SizedBox(
                width: 320,
                child: TextLiquidFill(
                  text: 'Hello, Welcome',
                  waveColor: Colors.blueAccent,
                  boxBackgroundColor: Color(0xff332c62),
                  textStyle: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 180,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      color: Colors.blue.shade100,
                      height: 580,
                      width: 350,
                    ),
                  ),
                  Positioned(
                    right: -80,
                    bottom: 0,
                    child: SizedBox(
                      child: Image(
                        image: AssetImage('images/astronaut.png'),
                        width: 480,
                        height: 600,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Center(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          bottom: 150,
                          right: 220,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(145, 60),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Login()));
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff332c62)),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 150,
                          right: 30,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(145, 60),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25))),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Registration1()));
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff332c62)),
                              )),
                        ),
                        Positioned(
                          bottom: 100,
                          right: 50,
                          child: TextButton(
                              style: TextButton.styleFrom(
                                fixedSize: Size(300, 30),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Welcomepage()));
                              },
                              child: Text(
                                'Continue As a Guest ->',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Bgdesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    var path = Path();
    path.lineTo(width, height);
    path.lineTo(0, height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
