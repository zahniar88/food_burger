import 'package:flutter/material.dart';
import 'package:food_burger/components/appbar_detail.dart';
import 'package:food_burger/components/quantity_field.dart';
import 'package:food_burger/components/size_selector.dart';
import 'package:food_burger/constant.dart';
import 'package:food_burger/models/food.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    Key? key,
    required this.food,
  }) : super(key: key);

  final Food food;

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<String> sizes = ["S", "M", "L"];
  int selectedSize = 0;
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBarDetail(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: dPadding, bottom: 4, top: dPadding),
              child: Text(
                widget.food.title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: blackColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: dPadding),
              child: Text(
                widget.food.desc,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: greyColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: dPadding, vertical: 50),
              child: Image.asset(widget.food.image, width: double.infinity),
            ),
            SizeSelector(
              sizes: sizes,
              selectedSize: selectedSize,
              onTap: (index) {
                setState(() {
                  selectedSize = index;
                });
              },
            ),
            SizedBox(height: 40),
            QuantityField(
              quantity: quantity,
              onMinus: () {
                setState(() {
                  quantity = (quantity > 0) ? quantity - 1 : quantity;
                });
              },
              onPlus: () {
                setState(() {
                  quantity++;
                });
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: dPadding)
            .copyWith(bottom: dPadding),
        child: Container(
          height: 60,
          width: double.infinity,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: greyColor,
                    ),
                  ),
                  Text(
                    "IDR ${widget.food.price}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: blackColor,
                    ),
                  ),
                ],
              ),
              Spacer(),
              MaterialButton(
                onPressed: () {},
                minWidth: 60,
                height: 60,
                padding: EdgeInsets.all(21),
                color: softGreyColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(Icons.favorite_border),
              ),
              SizedBox(width: 20),
              MaterialButton(
                onPressed: () {},
                minWidth: 60,
                height: 60,
                padding: EdgeInsets.all(21),
                color: greenColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
