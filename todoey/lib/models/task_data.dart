
import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  int get taskCount => tasks.length;

  void addTask(String name) {
    final task = Task(name: name);
    tasks.add(task);
    notifyListeners();
  }
}
