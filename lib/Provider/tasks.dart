import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todo_dlutter/Model/task.dart';

class AddTasks with ChangeNotifier {
  List<Task> tasks = [
    Task(
      Taskname: 'Buy Milk',
    ),
    Task(Taskname: 'Buy Sugar'),
    Task(
      Taskname: 'Get Ready',
    ),
  ];

  int get taskcount {
    return tasks.length;
  }

  void addtask(String newvalue) {
    final task = Task(Taskname: newvalue);
    tasks.add(task);
    notifyListeners();
  }

  void TaskStatus(Task task) {
    task.Togglestatus();
    notifyListeners();
  }

  void removetask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
