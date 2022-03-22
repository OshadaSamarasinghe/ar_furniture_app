// ignore_for_file: use_key_in_widget_constructors, annotate_overrides, prefer_const_constructors, deprecated_member_use, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Add Items')),
            body: Center(child: HomeScreen())));
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final item = TextEditingController();
  final code = TextEditingController();
  final price = TextEditingController();
  final shop = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: item,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Item name',
                ),
              )),
          Container(
            width: 280,
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: code,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Item Code',
              ),
            ),
          ),
          Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: shop,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Item price',
                ),
              )),
          Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: price,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'shop name',
                ),
              )),
          RaisedButton(
            onPressed: () => {
              //do something
            },
            color: Color(0xffFF1744),
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text('Insert'),
          ),
          RaisedButton(
            onPressed: () => {
              //do something
            },
            color: Color(0xffFF1744),
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text('Update'),
          ),
        ],
      ),
    ));
  }
}

class SecondScreen extends StatelessWidget {
  final itemHolder;
  final codeHolder;
  final priceHolder;
  final shopHolder;

  SecondScreen(
      {required Key key,
      @required this.itemHolder,
      this.codeHolder,
      this.priceHolder,
      this.shopHolder})
      : super(key: key);

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ADD ITEMS"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Text(
                'Item Name = ' + itemHolder,
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              )),
              Center(
                  child: Text(
                'Item code = ' + codeHolder,
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              )),
              Center(
                  child: Text(
                'Item price = ' + priceHolder,
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              )),
              Center(
                  child: Text(
                'Shop Name = ' + shopHolder,
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              )),
              RaisedButton(
                onPressed: () => goBack(context),
                color: Colors.lightBlue,
                textColor: Colors.white,
                child: Text(
                  'Insert',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              RaisedButton(
                onPressed: () => goBack(context),
                color: Colors.lightBlue,
                textColor: Colors.white,
                child: Text(
                  'Insert',
                  style: TextStyle(fontSize: 25),
                ),
              )
            ]));
  }
}
