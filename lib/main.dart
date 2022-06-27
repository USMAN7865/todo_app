import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_dlutter/Provider/tasks.dart';
import 'package:todo_dlutter/Screens/TodoScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddTasks(),
      child: const MaterialApp(
        home: TodoTask(),
      ),
    );
  }
}
