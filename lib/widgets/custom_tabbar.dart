import 'package:coffee_app_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Theme(
      data: ThemeData(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      child: TabBar(
        labelStyle: Theme.of(context).textTheme.headline4,
        padding: EdgeInsets.zero,
        labelPadding: const EdgeInsets.only(right: 30),
        automaticIndicatorColorAdjustment: false,
        controller: _tabController,
        labelColor: AppColors.orange,
        unselectedLabelColor: AppColors.bottomNavGrey,
        isScrollable: true,
        indicator: const CircleTabIndicator(
          color: AppColors.orange,
          radius: 4,
        ),
        tabs: const [
          Tab(text: AppText.cappuccino),
          Tab(text: AppText.espresso),
          Tab(text: AppText.latte),
          Tab(text: AppText.desi),
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  final double radius;

  const CircleTabIndicator({
    required this.color,
    required this.radius,
  });
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({
    required this.color,
    required this.radius,
  });
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2.8 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
