// ignore_for_file: use_key_in_widget_constructors, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Paintshop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 5,
      ),
      height: 450,
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Container(
              height: 50,
              width: 50,
              color: Colors.blue[200],
              child: Text(
                'Shop $index',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),
            );
          }),
        ),
      
    );
  }
}
