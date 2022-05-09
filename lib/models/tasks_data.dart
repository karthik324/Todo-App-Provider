import 'package:flutter/foundation.dart';
import 'package:todoey_provider/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTasktitle) {
    final task = Task(name: newTasktitle);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
