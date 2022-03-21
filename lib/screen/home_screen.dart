import 'package:coffee_app_ui/constants/colors.dart';
import 'package:coffee_app_ui/constants/text.dart';
import 'package:coffee_app_ui/data/coffee_data.dart';
import 'package:coffee_app_ui/widgets/article.dart';
import 'package:coffee_app_ui/widgets/coffee_item.dart';
import 'package:coffee_app_ui/widgets/custom_bottom_navigation_bar.dart';
import 'package:coffee_app_ui/widgets/custom_tabbar.dart';
import 'package:coffee_app_ui/widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app_ui/widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Coffee> coffees = coffee;
    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      bottomNavigationBar: const CustomNavigationBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                CustomAppBar(
                  backButton: false,
                  profile: true,
                  icon: Icons.grid_view_rounded,
                ),
                const SizedBox(height: 20),
                Text(
                  AppText.bestCoffee,
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(height: 20),
                const CustomTextBox(),
                const SizedBox(height: 20),
                const CustomTabBar(),
                const SizedBox(height: 10),
                CoffeeItems(coffees: coffees),
                const SizedBox(height: 20),
                Text(
                  AppText.special,
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(height: 20),
                const Article(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
