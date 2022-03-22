// ignore_for_file: prefer_const_declarations, use_key_in_widget_constructors, unused_label, unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Paint Items';
    theme:
    final myImageAndCaption = [
      ["assets/images/blue.jpg", "Blue Paints"],
      ["assets/images/green.jpg", "Green Paints"],
      ["assets/images/orange.jpg", "Orange Paints"],
      ["assets/images/pink.jpg", "Pink Paints"],
      ["assets/images/purple.jpg", "Purple Paints"],
      ["assets/images/yellow.jpg", "Yellow Paints"],
      ["assets/images/cyan.jpg", "Cyan Paints"],
      ["assets/images/red.jpg", "Red Paints"],
      ["assets/images/white.jpg", "White Paints"],
      ["assets/images/cream.jpg", "Cream Paints"],
      ["assets/images/grey.jpg", "Grey Paints"],
      ["assets/images/brown.jpg", "Brown Paints"],
      ["assets/images/gold.jpg", "Gold Paints"],
      ["assets/images/blue.jpg", " Ocean Blue Paints"],
    ];

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            ...myImageAndCaption.map(
              (i) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Material(
                    child: Image.asset(
                      i.first,
                      fit: BoxFit.fitWidth,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(i.last),
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
