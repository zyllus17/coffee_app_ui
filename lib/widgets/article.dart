import 'package:coffee_app_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class Article extends StatelessWidget {
  const Article({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff171b22),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    AppImages.coffee3,
                  ),
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Text(
                  "Hey, Coffee addict reading this",
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(height: 5),
                Text(
                  "Yes you, scrolling and checking out this amazing app, click here",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: AppColors.dullWhite,
                        fontSize: 13,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
