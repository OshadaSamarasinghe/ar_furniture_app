// ignore_for_file: camel_case_types, prefer_const_constructors, use_key_in_widget_constructors, duplicate_ignore, file_names, unused_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:ar_e_commerce_app/chairModel.dart';
import 'chairItemcard.dart';

class ChairPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, int key) {
          return chairItemCard(index: key);
        },
      ),
    );
  }
}
