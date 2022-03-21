import 'package:flutter/material.dart';

import 'package:coffee_app_ui/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  final IconData icon;
  late bool backButton;
  late bool profile;

  CustomAppBar({
    Key? key,
    required this.icon,
    required this.backButton,
    required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.buttonBlack,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: IconButton(
              onPressed: () {
                backButton ? Navigator.pop(context) : {};
              },
              icon: Icon(
                icon,
                color: AppColors.iconColor,
                size: 20,
              ),
            ),
          ),
          profile
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                        color: AppColors.boxShadow,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: AssetImage(AppImages.profile),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(
                  decoration: BoxDecoration(
                    color: AppColors.buttonBlack,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 40,
                  width: 40,
                  child: const Icon(
                    Icons.favorite,
                    color: AppColors.iconColor,
                    size: 20,
                  ),
                )
        ],
      ),
    );
  }
}
