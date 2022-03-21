import 'dart:ui';

import 'package:coffee_app_ui/constants/constants.dart';
import 'package:coffee_app_ui/data/coffee_data.dart';
import 'package:coffee_app_ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Stack(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.buttonBlack,
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage(coffee.images),
                fit: BoxFit.cover,
              ),
            ),
            child: const SizedBox(height: 20),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: CustomAppBar(
              backButton: true,
              profile: false,
              icon: Icons.arrow_back_ios_new_rounded,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10.0,
                  sigmaY: 10.0,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    color: AppColors.blur,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  coffee.title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(fontSize: 30),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(coffee.subTitle,
                                    style:
                                        Theme.of(context).textTheme.headline5),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star_rounded,
                                      color: AppColors.orange,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      coffee.rating,
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 50.0,
                                      width: 50.0,
                                      decoration: BoxDecoration(
                                        color: AppColors.buttonBlack,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            AppImages.coffeeicon,
                                            height: 20,
                                            color: AppColors.orange,
                                          ),
                                          Text(
                                            AppText.coffee,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 50.0,
                                      width: 50.0,
                                      decoration: BoxDecoration(
                                        color: AppColors.buttonBlack,
                                        borderRadius: BorderRadius.circular(
                                          10.0,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            AppImages.milkicon,
                                            height: 20,
                                            color: AppColors.orange,
                                          ),
                                          Text(
                                            AppText.milk,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  width: 120,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: AppColors.buttonBlack,
                                    borderRadius: BorderRadius.circular(
                                      10.0,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      AppText.mediumRoast,
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
