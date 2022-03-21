import 'package:coffee_app_ui/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: AppColors.bottomNavBlack,
      selectedItemColor: AppColors.orange,
      unselectedItemColor: AppColors.bottomNavGrey,
      items: [
        bottomNavigationBarItem(icon: Icons.home, label: 'Home'),
        bottomNavigationBarItem(icon: Icons.shopping_bag, label: 'Shop'),
        bottomNavigationBarItem(icon: Icons.favorite, label: 'Favorite'),
        bottomNavigationBarItem(
            icon: Icons.notifications, label: 'Notification'),
      ],
    );
  }

  BottomNavigationBarItem bottomNavigationBarItem(
      {required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        size: 30,
      ),
      activeIcon: Icon(
        icon,
        color: AppColors.orange,
      ),
      label: label,
    );
  }
}
