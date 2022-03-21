// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, file_names, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:ar_e_commerce_app/otherModel.dart';

import 'furnithureModel.dart';

class MenuItemCard extends StatelessWidget {
  final int index;

  MenuItemCard({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 40),
      padding: EdgeInsets.all(20),
      child: AspectRatio(
        aspectRatio: 3 / 1,
        child: Container(
          color: Colors.lightBlue,
          child: Row(
            //
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1 / 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    menu[index].image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              AspectRatio(
                aspectRatio: 4 / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      menu[index].name,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      menu[index].shortDesc,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w300), //textfield
                    ), //text
                    SizedBox(
                      height: 5,
                    ), //sizebox
                    Text(
                      "Rs." + menu[index].price.toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle,
                  color: Colors.brown[600],
                  size: 36,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
