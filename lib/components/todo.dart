import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  bool _done = false;
  Color _backgroundColor = Colors.amber;
  final TextEditingController _toDoTitleController = TextEditingController();

  void toggleDone(bool? done) {
    setState(() {
      _done = done!;
      if (_done) {
        _backgroundColor = Colors.blueGrey;
      } else {
        _backgroundColor = Colors.amber;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: Card(
          color: _backgroundColor,
          child: ListTile(
              title: TextField(
                controller: _toDoTitleController,
              ),
              trailing: Checkbox(value: _done, onChanged: toggleDone))),
    );
  }
}
