// ignore_for_file: prefer_const_constructors, annotate_overrides, unnecessary_this

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // It is the root widget of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Application',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Complex layout example'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Complete Orders")),
        body: ListView(
          padding: EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
          children: <Widget>[
            ProductBox(
                name: "shop 1",
                description: "order completed",
                image: "iphone.png"),
            ProductBox(
                name: "shop 2",
                description: "order completed",
                image: "android.png"),
            ProductBox(
                name: "shop 3",
                description: "order completed",
                image: "tablet.png"),
            ProductBox(
                name: "shop 4",
                description: "order completed",
                image: "laptop.png"),
            ProductBox(
                name: "shop 5",
                description: "order completed",
                image: "computer.png"),
            ProductBox(
                name: "shop 6",
                description: "order completed",
                image: "iphone.png"),
            ProductBox(
                name: "shop 7",
                description: "order completed",
                image: "iphone.png"),
            ProductBox(
                name: "shop 8",
                description: "order completed",
                image: "iphone.png"),
            ProductBox(
                name: "shop 9",
                description: "order completed",
                image: "iphone.png"),
            ProductBox(
                name: "shop 10",
                description: "order completed",
                image: "iphone.png"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.image})
      : super(key: key);
  final String name;
  final String description;

  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 110,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("assets/" + image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          // ignore: deprecated_member_use
                          RaisedButton(
                            child: Text('View Order'),
                            elevation: 5.0,
                            onPressed: () {
                              ListView();
                            },
                          ),
                        ],
                      )))
            ])));
  }
}
