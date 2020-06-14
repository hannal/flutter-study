
import 'package:flutter/foundation.dart';
import 'dart:collection';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);
  int get taskCount => _tasks.length;

  void addTask(String name) {
    final task = Task(name: name);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
