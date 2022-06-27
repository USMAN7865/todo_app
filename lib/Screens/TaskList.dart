// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_dlutter/Provider/tasks.dart';
import 'package:todo_dlutter/Screens/taskTile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AddTasks>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              ischecked: task.Taskstatus,
              Tasktitle: task.Taskname,
              checkboxcallback: (bool? checkboxstate) {
                taskData.TaskStatus(task);
                if (checkboxstate = true) {
                  // taskData.removetask(task);
                } else {}
              },
              onlongpresscallback: () {
                taskData.removetask(task);
              },
            );
          },
          itemCount: taskData.taskcount,
        );
      },
    );
  }
}
