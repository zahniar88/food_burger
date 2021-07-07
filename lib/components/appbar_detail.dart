import 'package:flutter/material.dart';
import 'package:food_burger/constant.dart';


class AppBarDetail extends StatelessWidget implements PreferredSizeWidget {
  const AppBarDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: whiteColor,
      elevation: 0,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: EdgeInsets.only(left: dPadding),
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: blackColor,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: dPadding),
          child: Icon(
            Icons.more_vert,
            color: blackColor,
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
