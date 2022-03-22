// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, file_names, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:ar_e_commerce_app/furnithureModel.dart';
import 'menuItemcard.dart';

class SofaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, int key) {
          return MenuItemCard(index: key);
        },
      ),
    );
  }
}
