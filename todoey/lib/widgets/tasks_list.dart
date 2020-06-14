
import 'package:flutter/material.dart';

import 'package:todoey/models/task.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {

  List<Task> tasks = [
    Task(name: '첫 번째 할 일'),
    Task(name: '두 번째 할 일', isDone: true),
    Task(name: '세 번째 할 일'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: tasks.map((task) => TaskTile(name: task.name, isChecked: task.isDone)).toList(),
    );
  }
}
