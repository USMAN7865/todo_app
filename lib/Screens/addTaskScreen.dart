import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              const TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
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
