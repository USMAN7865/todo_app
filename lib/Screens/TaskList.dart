// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_dlutter/Screens/taskTile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
