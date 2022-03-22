// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, annotate_overrides, unnecessary_this, file_names

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // It is the root widget of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ongoing Page',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Complex layout example'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Ongoing Page")),
        body: ListView(
          padding: EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
          children: <Widget>[
            ProductBox(
                name: "John",
                description: "BFG12356",
                price: 1000,
                image: "iphone.png"),
            ProductBox(
                name: "John",
                description: "BFH12453",
                price: 10000,
                image: "android.png"),
            ProductBox(
                name: "John",
                description: "BFD12678",
                price: 25000,
                image: "tablet.png"),
            ProductBox(
                name: "John",
                description: "BGH12783",
                price: 35000,
                image: "laptop.png"),
            ProductBox(
                name: "John",
                description: "BGT12890",
                price: 10000,
                image: "computer.png"),
            ProductBox(
                name: "John",
                description: "BGN12342",
                price: 10000,
                image: "computer.png"),
            ProductBox(
                name: "John",
                description: "BGF12456",
                price: 10000,
                image: "computer.png"),
            ProductBox(
                name: "John",
                description: "BGD12124",
                price: 10000,
                image: "computer.png"),
            ProductBox(
                name: "John",
                description: "BJI13467",
                price: 10000,
                image: "computer.png"),
            ProductBox(
                name: "John",
                description: "BTF12456",
                price: 10000,
                image: "computer.png"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
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
                          Text("Price: " + this.price.toString()),
                          // ignore: deprecated_member_use
                          RaisedButton(
                            child: Text('Status'),
                            elevation: 5.0,
                            onPressed: () {
                              Listview();
                            },
                          ),
                        ],
                      )))
            ])));
  }
}

class Listview {}
