import 'package:flutter/material.dart';
import 'package:food_burger/constant.dart';

class AppBarHome extends StatelessWidget implements PreferredSize {
  const AppBarHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: whiteColor,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(left: dPadding),
        child: Icon(
          Icons.menu,
          color: blackColor,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: dPadding),
          child: InkWell(
            onTap: () {},
            child: Icon(
              Icons.shopping_basket_outlined,
              color: blackColor,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => AppBar().preferredSize;
}
