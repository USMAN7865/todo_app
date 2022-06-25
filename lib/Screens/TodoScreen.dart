// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:todo_dlutter/Screens/TaskList.dart';
import 'package:todo_dlutter/Screens/addTaskScreen.dart';

class TodoTask extends StatelessWidget {
  const TodoTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => const AddTaskScreen());
        },
      ),
      backgroundColor: Colors.blueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 80, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todo Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '10 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(18.0),
                child: TasksList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
