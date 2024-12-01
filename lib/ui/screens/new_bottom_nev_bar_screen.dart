import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/Progress_task_screen.dart';
import 'package:task_manager/ui/screens/canceled_task_screen.dart';
import 'package:task_manager/ui/screens/completed_task_screen.dart';
import 'package:task_manager/ui/screens/new_task_screen.dart';
import 'package:task_manager/ui/utils/app_colors.dart';
import 'package:task_manager/ui/utils/assets_path.dart';
import 'package:task_manager/widgets/task_manager_appbar.dart';

class MainBottomNavBarScreen extends StatefulWidget {
  const MainBottomNavBarScreen({super.key});

  @override
  State<MainBottomNavBarScreen> createState() => _MainBottomNavBarScreenState();
}

class _MainBottomNavBarScreenState extends State<MainBottomNavBarScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = const [
    NewTaskScreen(),
    CompletedTaskScreen(),
    CanceledTaskScreen(),
    ProgressTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TaskManagerAppBar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          _selectedIndex = index;
          setState(() {});
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.new_label,
            ),
            label: 'New Task',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.task_outlined,
            ),
            label: 'Completed',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.cancel_outlined,
            ),
            label: 'Canceled',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.access_time_outlined,
            ),
            label: 'Progress',
          ),
        ],
      ),
    );
  }
}

