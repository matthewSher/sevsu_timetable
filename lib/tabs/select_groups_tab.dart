import 'package:flutter/widgets.dart';

class SelectGroupsTab extends StatefulWidget {
  const SelectGroupsTab({super.key});

  @override
  State<SelectGroupsTab> createState() => _SelectGroupsTabState();
}

class _SelectGroupsTabState extends State<SelectGroupsTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Выбор учебных групп'),
    );
  }
}
