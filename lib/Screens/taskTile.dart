// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool ischecked;
  final String? Tasktitle;
  final Function(bool?) checkboxcallback;
  final VoidCallback onlongpresscallback;

  TaskTile(
      {required this.ischecked,
      required this.Tasktitle,
      required this.checkboxcallback,
      required this.onlongpresscallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: onlongpresscallback,
        title: Text(
          Tasktitle!,
          style: TextStyle(
              decoration: ischecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: ischecked,
          onChanged: checkboxcallback,
        ));
  }
}
