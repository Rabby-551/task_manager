import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/splash_screen.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(

        )
      ),
      home: SplashScreen(),
    );
  }
}
