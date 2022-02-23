// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        //top: MediaQuery.of(context).padding.top,
        top: 40,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome home',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox( height: 5,),
            Text('Rashmi Amarasinghe',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),),   
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 10),
              // transform: Matrix4.rotationZ(100),
              child: Stack(
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 30,
                    color: Colors.grey,
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                ],),
            ),
            SizedBox(width: 10),
            ClipOval(
              child: Image.asset('assets/boy.jpg',
              width: 40,))
          ],
        ),
      ],),
    );
  }
}