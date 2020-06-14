
import 'package:flutter/material.dart';

import 'package:todoey/models/task.dart';
import 'task_tile.dart';

class TaskList extends StatefulWidget {

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: '첫 번째 할 일'),
    Task(name: '두 번째 할 일', isDone: true),
    Task(name: '세 번째 할 일'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          name: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (value) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
