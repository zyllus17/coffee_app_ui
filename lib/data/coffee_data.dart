import 'package:coffee_app_ui/constants/constants.dart';

class Coffee {
  final String images;
  final String title;
  final String subTitle;
  final String price;
  final String rating;

  Coffee({
    required this.images,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.rating,
  });
}

List<Coffee> coffee = [
  Coffee(
    images: AppImages.coffee1,
    title: "Cappuccino",
    subTitle: "With Oat Milk",
    price: "4.14",
    rating: "4.7",
  ),
  Coffee(
    images: AppImages.coffee8,
    title: "Espresso",
    subTitle: "With Chocolate",
    price: "4.69",
    rating: "4.5",
  ),
  Coffee(
    images: AppImages.coffee3,
    title: "Latte",
    subTitle: "With Cream",
    price: "7.54",
    rating: "4.1",
  ),
];
