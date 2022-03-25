// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, annotate_overrides

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.blue[700], title: Text('Add Items')),
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
  final description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: [
                    Colors.lightBlue,
                    Colors.white,
                  ],
                )),
                child: Column(
                  children: <Widget>[
                    Container(
                        width: 400,
                        padding: EdgeInsets.all(10.0),
                        child: TextField(
                          controller: item,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Item name',
                          ),
                        )),
                    Container(
                      width: 400,
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
                        width: 400,
                        padding: EdgeInsets.all(10.0),
                        child: TextField(
                          controller: description,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Item price',
                          ),
                        )),
                    Container(
                        width: 400,
                        padding: EdgeInsets.all(10.0),
                        child: TextField(
                          controller: price,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Description',
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.all(15),
                      // ignore: unnecessary_new
                      child: new ButtonBar(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          RaisedButton(
                            child: Text('Insert'),
                            color: Colors.blue[900],
                            onPressed: () {/** */},
                          ),
                          RaisedButton(
                            child: Text('Update'),
                            color: Colors.blue[900],
                            onPressed: () {/** */},
                          ),
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}

class SecondScreen extends StatelessWidget {
  final itemHolder;
  final codeHolder;
  final priceHolder;
  final descriptionHolder;

  SecondScreen(
      {required Key key,
      @required this.itemHolder,
      this.codeHolder,
      this.priceHolder,
      this.descriptionHolder})
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
            'Description  = ' + descriptionHolder,
            style: TextStyle(fontSize: 22),
            textAlign: TextAlign.center,
          )),
        ],
      ),
    );
  }
}
