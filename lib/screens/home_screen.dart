import 'package:flutter/material.dart';
import 'package:sevsu_timetable_2/tabs/calendar_tab.dart';
import 'package:sevsu_timetable_2/tabs/schedule_tab.dart';
import 'package:sevsu_timetable_2/tabs/select_groups_tab.dart';
import 'package:sevsu_timetable_2/widgets/navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppNavigationBar(
          currentPageIndex: _currentPageIndex,
          onDestinationSelected: (index) {
            setState(() {
              _currentPageIndex = index;
            });
          }),
      body: IndexedStack(
        index: _currentPageIndex,
        children: const <Widget>[
          ScheduleTab(),
          CalendarTab(),
          SelectGroupsTab(),
        ],
      ),
    );
  }
}
