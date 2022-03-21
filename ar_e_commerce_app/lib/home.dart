// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:ar_e_commerce_app/search.dart';
import 'package:flutter/material.dart';
import 'package:ar_e_commerce_app/widget/best_offer.dart';
import 'package:ar_e_commerce_app/widget/categories.dart';
import 'package:ar_e_commerce_app/widget/recommended_colors.dart';
import 'package:ar_e_commerce_app/widget/welcome_text.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    // ignore: prefer_const_constructors
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 5,
      ),
      height: 450,
      color: Theme.of(context).backgroundColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBox(),
            WelcomeText(),
            Categories(),
            Recommendedcolor(),
            BestOffer()
          ],
        ),
      ),
    );
  }
}
