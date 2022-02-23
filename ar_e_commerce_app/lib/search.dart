// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:ar_e_commerce_app/searchpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      height: 200,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        //color: Colors.blueGrey,
        image: DecorationImage(
          image: AssetImage('assets/search.webp'),
          fit: BoxFit.cover
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Search',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),),
          SizedBox(height: 2),
          Text('Search here for your fav shops and furnitures',
          style: TextStyle(
            height: 1.8,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),),
          SizedBox(height: 10),
         /* TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.search_outlined),
              hintText: "search",
            ),
          ),*/
         GestureDetector(
           onTap: () {
             Navigator.of(context).push(
               MaterialPageRoute(builder: 
               (context) => SearchPage() )
             );
           },
           child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                children: [
                  Icon(
                      Icons.search_outlined,
                      size: 25,
                      color: Colors.grey,
                  ),
                  SizedBox(width: 15),
                  Text('Search',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),),
                ],
              ),
            ),
         )
        ],
      ),
    );

  }
}