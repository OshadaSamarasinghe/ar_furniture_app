// ignore_for_file: use_key_in_widget_constructors

// ignore: unused_import
import 'package:ar_e_commerce_app/home.dart';
// ignore: unused_import
import 'package:ar_e_commerce_app/paintshop.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'appbarhome.dart';
// ignore: unused_import
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
                  .push(MaterialPageRoute(builder: (context) => Welcomepage()));//Welcomepage()
            },
            child: Text('Click'),
          ),
        ],
      ),
    );
  }
}
