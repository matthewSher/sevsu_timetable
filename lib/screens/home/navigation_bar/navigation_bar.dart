import 'package:flutter/material.dart';
import 'package:sevsu_timetable_2/utils/app_constants.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({super.key});

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
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
