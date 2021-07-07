class Food {
  final String image, title, desc;
  final double price;

  Food({
    required this.image,
    required this.title,
    required this.desc,
    required this.price,
  });
}

List<Food> foods = [
  Food(
    image: "assets/images/image1.jpeg",
    title: "Pizza",
    desc: "Delicious food 2020",
    price: 49.999,
  ),
  Food(
    image: "assets/images/image2.jpeg",
    title: "Burger",
    desc: "Delicious food 2020",
    price: 59.999,
  ),
  Food(
    image: "assets/images/image3.jpeg",
    title: "Double Hot Dog",
    desc: "Delicious food 2020",
    price: 34.999,
  ),
];
