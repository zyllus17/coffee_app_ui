import 'package:coffee_app_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardAppearance: Brightness.dark,
      style: const TextStyle(color: AppColors.white),
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: AppColors.searchText,
        ),
        hintText: AppText.findCoffee,
        hintStyle: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: AppColors.searchText),
        fillColor: AppColors.buttonBlack,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
