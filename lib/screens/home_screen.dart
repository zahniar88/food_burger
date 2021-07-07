import 'package:flutter/material.dart';
import 'package:food_burger/components/appbar_home.dart';
import 'package:food_burger/components/bottom_navbar_home.dart';
import 'package:food_burger/components/categories_list.dart';
import 'package:food_burger/components/foods_list.dart';
import 'package:food_burger/components/search_field.dart';
import 'package:food_burger/constant.dart';
import 'package:food_burger/models/food.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int active = 0;
  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBarHome(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchField(),
            CategoriesList(
              selectedCategory: selectedCategory,
              onTap: (int value) {
                setState(() {
                  selectedCategory = value;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: dPadding)
                  .copyWith(bottom: 18),
              child: Text(
                "Popular Food",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: blackColor,
                ),
              ),
            ),
            FoodsList(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavbarHome(
        active: active,
        onTabChange: (int value) {
          setState(() {
            active = value;
          });
        },
      ),
    );
  }
}
