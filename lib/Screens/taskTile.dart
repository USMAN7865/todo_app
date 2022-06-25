import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Enter First Task'),
      trailing: Tilecheck(),
    );
  }
}

class Tilecheck extends StatefulWidget {
  const Tilecheck({
    Key? key,
  }) : super(key: key);

  @override
  State<Tilecheck> createState() => _TilecheckState();
}

class _TilecheckState extends State<Tilecheck> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: ischecked,
      onChanged: (value) {
        setState(() {
          ischecked = value!;
        });
      },
    );
  }
}
