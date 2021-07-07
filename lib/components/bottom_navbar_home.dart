import 'package:flutter/material.dart';
import 'package:food_burger/constant.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class BottomNavbarHome extends StatelessWidget {
  const BottomNavbarHome({
    Key? key,
    required this.active,
    required this.onTabChange,
  }) : super(key: key);

  final int active;
  final ValueChanged<int> onTabChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(dPadding),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: softGreyColor,
          borderRadius: BorderRadius.circular(27),
        ),
        child: GNav(
          duration: Duration(milliseconds: 300),
          gap: 7,
          haptic: true,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          selectedIndex: active,
          tabBackgroundColor: greenColor,
          activeColor: whiteColor,
          onTabChange: onTabChange,
          color: greyColor,
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: whiteColor,
            fontSize: 14,
          ),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.notifications,
              text: "Alert",
            ),
            GButton(
              icon: Icons.favorite,
              text: "Favorite",
            ),
            GButton(
              icon: Icons.person,
              text: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
