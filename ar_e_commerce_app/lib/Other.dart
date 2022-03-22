// ignore_for_file: camel_case_types, prefer_const_constructors, use_key_in_widget_constructors, duplicate_ignore, file_names, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:ar_e_commerce_app/otherModel.dart';
import 'otherItemCard.dart';

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: list2.length,
        itemBuilder: (context, int key) {
          return otherItemCard(index: key);
        },
      ),
    );
  }
}
