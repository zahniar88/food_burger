import 'package:flutter/material.dart';
import 'package:food_burger/constant.dart';


class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: dPadding).copyWith(bottom: dPadding),
      padding: EdgeInsets.only(left: dPadding, right: dPadding / 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: softGreyColor,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.search,
            color: greyColor,
          ),
        ),
      ),
    );
  }
}
