import 'package:flutter/material.dart';
import 'package:food_burger/constant.dart';

class Sectiontitle extends StatelessWidget {
  const Sectiontitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: dPadding, bottom: 8),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    );
  }
}
