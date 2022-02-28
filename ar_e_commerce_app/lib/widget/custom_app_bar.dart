// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:ar_e_commerce_app/widget/custom_app_bar.dart';

// ignore: use_key_in_widget_constructors
abstract class CustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/menu.svg')),
          CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.jpeg')),
        ],
      ),
    ));
  }
}

class SvgPicture {
  static asset(String s) {}
}

// ignore: duplicate_ignore
@override
// ignore: prefer_const_constructors
Size get preferredSize => Size.fromHeight(50);
