import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigationBarItemData {
  final Widget selectedIcon;
  final Widget unselectedIcon;
  final String label;

  NavigationBarItemData({
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.label,
  });
}
