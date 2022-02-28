// ignore_for_file: deprecated_member_use, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ar_e_commerce_app/paint.dart';
import 'package:ar_e_commerce_app/circle_icon_button.dart';
// ignore: use_key_in_widget_constructors

// ignore: use_key_in_widget_constructors
class Recommendedcolor extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final RecommendedList = Paint.generateRecommended();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        height: 340,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            height: 300,
            width: 230,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(RecommendedList[index].imageUrl),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  right: 15,
                  top: 15,
                  child: CircleIconButton(
                      iconUrl: 'assets/icons/mark.svg',
                      color: Theme.of(context).accentColor),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    top: 0,
                    child: Container(
                      color: Colors.white54,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ('RecommendedList[index].name,style:Theme.of(context).textTheme.headline1!.copyWidth(fontSize:16 , FontWeight.bold)'),
                              ),
                            ],
                          ),
                          CircleIconButton(
                              iconUrl: 'assets/icons/mark.svg',
                              color: Theme.of(context).accentColor)
                        ],
                      ),
                    ))
              ],
            ),
          ),
          separatorBuilder: (_, index) => SizedBox(width: 20),
          itemCount: RecommendedList.length,
        ));
  }
}
