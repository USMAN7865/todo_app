import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_dlutter/Provider/tasks.dart';
import 'package:todo_dlutter/Screens/TaskList.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newAddTask = '';
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
          child: Column(
            children: [
              const Text(
                'ADD TASK',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                onChanged: (value) {
                  newAddTask = value;
                },
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Provider.of<AddTasks>(context, listen: false)
                        .addtask(newAddTask);
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: 130,
                    alignment: Alignment.center,
                    color: Colors.blueAccent,
                    child: const Text(
                      'ADD',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
