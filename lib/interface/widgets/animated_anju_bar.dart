import 'package:flutter/material.dart';
// utils
import 'package:anju/config/themes/anju_colors.dart';
import 'package:auto_route/auto_route.dart';
// packages
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class AnimatedAnjuBar extends StatefulWidget {
  const AnimatedAnjuBar({super.key});

  @override
  State<AnimatedAnjuBar> createState() => _AnimatedAnjuBarState();
}

class _AnimatedAnjuBarState extends State<AnimatedAnjuBar> {
  int activeIndex = 2;
  int lastIndex = 0;
  final activeColorIcon = AnjuColors.secondary;
  final inactiveColorIcon = Colors.white;

  List<Icon> get itemsDynamics {
    final icons = [
      Icon(Icons.shopping_cart_rounded, color: inactiveColorIcon),
      Icon(Icons.folder_open, color: inactiveColorIcon),
      Icon(Icons.home_rounded, color: inactiveColorIcon),
      Icon(Icons.inventory_2_rounded, color: inactiveColorIcon),
      Icon(Icons.credit_card_rounded, color: inactiveColorIcon),
    ];

    if (activeIndex >= 0 && activeIndex < icons.length) {
      // ACTIVE ICON
      icons[activeIndex] = Icon(
        icons[activeIndex].icon,
        color: activeColorIcon,
      );
      // DEACTIVE ICON
      icons[lastIndex] = Icon(
        icons[lastIndex].icon,
        color: inactiveColorIcon,
      );
    }
    return icons;
  }

  void _updateColor(int index) {
    lastIndex = activeIndex;
    activeIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: AnjuColors.primary,
      animationDuration: const Duration(milliseconds: 500),
      color: AnjuColors.primary,
      onTap: (index) {
        _updateColor(index);
        AutoTabsRouter.of(context).setActiveIndex(index);
      },
      index: activeIndex,
      items: itemsDynamics,
    );
  }
}
