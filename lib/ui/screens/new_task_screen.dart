import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/add_new_task_screen.dart';
import 'package:task_manager/widgets/task_card.dart';
import 'package:task_manager/widgets/task_summary_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildSummarySection(),
          Expanded(
              child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const TaskCard();
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 8,
              );
            },
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapFloatingActionButton,
        child: const Icon(
          Icons.add,
          color: Colors.green,
        ),
      ),
    );
  }

  Widget _buildSummarySection() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TaskSummaryCard(
              title: 'New',
              count: 9,
            ),
            TaskSummaryCard(
              title: 'Completed',
              count: 9,
            ),
            TaskSummaryCard(
              title: 'Canceled',
              count: 9,
            ),
            TaskSummaryCard(
              title: 'Progress',
              count: 9,
            ),
            TaskSummaryCard(
              title: 'Progress',
              count: 9,
            ),
            TaskSummaryCard(
              title: 'Progress',
              count: 9,
            ),
          ],
        ),
      ),
    );
  }

  void _onTapFloatingActionButton() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddNewTaskScreen()),
    );
  }
}


