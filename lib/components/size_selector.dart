import 'package:flutter/material.dart';
import 'package:food_burger/components/section_title.dart';
import 'package:food_burger/constant.dart';


class SizeSelector extends StatelessWidget {
  const SizeSelector({
    Key? key,
    required this.sizes,
    required this.selectedSize,
    required this.onTap,
  }) : super(key: key);

  final List<String> sizes;
  final int selectedSize;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sectiontitle(title: "Size:"),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: dPadding),
          child: Row(
            children: sizes.map((size) {
              int index = sizes.indexOf(size);

              return InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  onTap.call(index);
                },
                child: Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(right: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (selectedSize == index) ? greenColor : softGreyColor,
                  ),
                  child: Text(
                    size,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: (selectedSize == index) ? whiteColor : blackColor,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
