import 'package:flutter/material.dart';
import 'package:food_burger/constant.dart';
import 'package:food_burger/models/category.dart';


class CategoriesList extends StatelessWidget {
  const CategoriesList({
    Key? key,
    required this.selectedCategory,
    required this.onTap,
  }) : super(key: key);

  final int selectedCategory;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: dPadding).copyWith(bottom: dPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: categories.map((category) {
          int index = categories.indexOf(category);
          return InkWell(
            highlightColor: Colors.transparent,
            onTap: () {
              onTap.call(index);
            },
            child: Column(
              children: [
                Text(
                  category.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: selectedCategory == index ? greenColor : greyColor,
                  ),
                ),
                (selectedCategory == index)
                    ? Container(
                        width: 20,
                        height: 2,
                        margin: EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: greenColor,
                        ),
                      )
                    : Container(
                        height: 2,
                        margin: EdgeInsets.only(top: 5),
                      ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
