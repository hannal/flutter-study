
import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  int get taskCount => _tasks.length;

  void addTask(String name) {
    final task = Task(name: name);
    _tasks.add(task);
    notifyListeners();
  }
}
