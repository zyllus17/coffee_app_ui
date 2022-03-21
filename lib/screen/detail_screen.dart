import 'dart:ui';
import 'package:coffee_app_ui/constants/colors.dart';
import 'package:coffee_app_ui/constants/constants.dart';
import 'package:coffee_app_ui/data/coffee_data.dart';
import 'package:coffee_app_ui/widgets/image_box.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Coffee coffeeModel;
  const DetailScreen({
    Key? key,
    required this.coffeeModel,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ImageBox(coffee: coffeeModel),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppText.description,
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            color: AppColors.textColor,
                          ),
                    ),
                    const SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                '${coffeeModel.title} is a coffee -bassed drink made primrily from espresso and milk',
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      color: AppColors.white,
                                    ),
                          ),
                          TextSpan(
                            text: ' ...Read More',
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      color: AppColors.orange,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      AppText.size,
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            color: AppColors.textColor,
                          ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(
                              width: 2,
                              color: AppColors.orange,
                            ),
                          ),
                          child: Text(
                            "S",
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: AppColors.orange,
                                    ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: AppColors.buttonBlack,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "M",
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: AppColors.orange,
                                    ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: AppColors.buttonBlack,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "L",
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: AppColors.orange,
                                    ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Price",
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            const SizedBox(height: 5),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: '\$',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2!
                                          .copyWith(
                                            color: AppColors.orange,
                                            fontWeight: FontWeight.bold,
                                          )),
                                  TextSpan(
                                    text: coffeeModel.price,
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
                          ],
                        ),
                        MaterialButton(
                          onPressed: () {},
                          height: 55,
                          minWidth: 200,
                          color: AppColors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            "Buy Now",
                            style:
                                Theme.of(context).textTheme.headline2!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
