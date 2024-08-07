import 'package:flutter/material.dart';
import 'package:sevsu_timetable_2/utils/app_colors.dart';
import 'package:sevsu_timetable_2/utils/app_constants.dart';

class AppNavigationBar extends StatefulWidget {
  final int currentPageIndex;
  final Function(int index) onDestinationSelected;

  const AppNavigationBar({
    super.key,
    required this.currentPageIndex,
    required this.onDestinationSelected,
  });

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: widget.currentPageIndex,
      onDestinationSelected: widget.onDestinationSelected,
      destinations: AppConstants.navigationBarItems
          .map((item) => NavigationDestination(
                icon: item.unselectedIcon,
                selectedIcon: item.selectedIcon,
                label: item.label,
              ))
          .toList(),
    );
  }
}
