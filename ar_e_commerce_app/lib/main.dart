// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'welcomepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main page.'),
      ),
      body: Column(
        children: [
          Text('Hello'),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Welcomepage()));
            },
            child: Text('Click'),
          ),
        ],
      ),
    );
  }
}
