// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors



import 'package:ar_e_commerce_app/search.dart';
import 'package:ar_e_commerce_app/theappbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class appbarhome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  //color: Color.fromRGBO(0, 38, 77, 10.0),
                  //color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TheAppBar(), SearchBox()
            ],
          ),
        ],
      ),

      bottomNavigationBar: CurvedNavigationBar(
                  backgroundColor: Colors.transparent,
                  animationDuration: Duration(milliseconds: 300),
                  height: 60,
                  color: Color.fromRGBO(0, 38, 77, 10.0),
                  items: const <Widget>[
                    Icon(Icons.home, size: 30, color: Colors.white),
                    Icon(Icons.receipt_long_outlined, size: 30, color: Colors.white),
                    Icon(Icons.bookmark_border_outlined, size: 30, color: Colors.white),
                    Icon(Icons.more_horiz_outlined, size: 30, color: Colors.white),
                    //Icon(Icons.person, size: 30, color: Colors.white),
                  ],
                  onTap: (index) {
                    //Handle button tap
                  },
                ),


    );
  }
}