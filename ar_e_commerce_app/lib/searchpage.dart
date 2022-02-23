// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ar_e_commerce_app/search_input.dart';
import 'package:ar_e_commerce_app/searchappbar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body : Stack(
        children: [
          Row(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchAppBar(), SearchInput()
            ],
          )
        ],
      )
    );
  }
}