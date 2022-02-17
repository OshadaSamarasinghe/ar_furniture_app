// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Registration1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            height: height,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  height: height * 0.1,
                  left: 30,
                  top: 25,
                  child: SizedBox(
                    height: height * 0.1,
                    child: Text(
                      'Step 1 of 2',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 50,
                      left: width * 0.05,
                      child: Center(
                        child: Container(
                          width: width * 0.9,
                          height: 20,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      width: width * 0.9,
                      height: 20,
                    ),
                    Positioned(
                      height: height * 0.1,
                      top: 50,
                      left: width * 0.05,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff332c62)),
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xff332c62)),
                        width: width * 0.45,
                        height: 20,
                      ),
                    ),
                    Positioned(
                      height: height * 0.1,
                      top: height * 0.1,
                      left: width * 0.02,
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                Positioned(
                  // height: height * 0.7,
                  top: height * 0.2,
                  left: width * 0.02,
                  child: Stack(
                    children: [
                      Positioned(
                        height: 40,
                        width: width * 0.45,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 4),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            labelText: 'First Name',
                          ),
                        ),
                      ),
                      Positioned(
                        top: height * 0.7 * 0.2,
                        child: SizedBox(
                          width: width * 0.95,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 4),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              labelText: 'Last Name',
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: height * 0.7 * 0.2,
                        child: SizedBox(
                          width: width * 0.95,
                          height: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 4),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              labelText: 'Phone No',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
