import 'package:coffee_app_ui/constants/colors.dart';
import 'package:coffee_app_ui/data/coffee_data.dart';
import 'package:coffee_app_ui/screen/detail_screen.dart';
import 'package:flutter/material.dart';

class CoffeeItems extends StatelessWidget {
  const CoffeeItems({
    Key? key,
    required this.coffees,
  }) : super(key: key);

  final List<Coffee> coffees;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: coffees.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    coffeeModel: coffees[index],
                  ),
                ),
              );
            },
            child: Container(
              width: 200,
              height: 300,
              margin: const EdgeInsets.only(right: 15.0),
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.buttonBlack,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 20.0,
                                spreadRadius: 1.0,
                                color: Color(0xff30221f),
                              ),
                            ],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(coffees[index].images),
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              coffees[index].title,
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            Text(
                              coffees[index].subTitle,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '\$\t',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2!
                                            .copyWith(
                                              color: AppColors.orange,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      TextSpan(
                                        text: coffees[index].price,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.add_rounded,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 22.0,
                    width: 55.0,
                    decoration: const BoxDecoration(
                      color: AppColors.ratingBG,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(15.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.star_rounded,
                          size: 15,
                          color: AppColors.orange,
                        ),
                        Text(
                          coffees[index].rating,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
