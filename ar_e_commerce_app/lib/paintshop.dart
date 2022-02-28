// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Paint Shops';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text(title),
        ),
        body: GridView.count(
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
      ),
    );
  }
}
