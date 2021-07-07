import 'package:flutter/material.dart';
import 'package:food_burger/components/section_title.dart';
import 'package:food_burger/constant.dart';


class QuantityField extends StatelessWidget {
  const QuantityField({
    Key? key,
    required this.quantity,
    required this.onMinus,
    required this.onPlus,
  }) : super(key: key);

  final int quantity;
  final void Function() onMinus;
  final void Function() onPlus;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sectiontitle(title: "Quantity"),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: dPadding),
          child: Row(
            children: [
              InkWell(
                onTap: onMinus,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: softGreyColor,
                  ),
                  child: Icon(Icons.remove),
                ),
              ),
              Container(
                width: 20 * 2,
                alignment: Alignment.center,
                child: Text(
                  quantity.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    color: blackColor,
                  ),
                ),
              ),
              InkWell(
                onTap: onPlus,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: greenColor,
                  ),
                  child: Icon(
                    Icons.add,
                    color: whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
