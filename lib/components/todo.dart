import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  bool _done = false;
  String _doneMessage = 'To do';
  final TextEditingController _toDoTitleController = TextEditingController();

  void toggleDone() {
    setState(() {
      _done = !_done;
      if (_done) {
        _doneMessage = "Done";
      } else {
        _doneMessage = 'To do';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: Card(
          color: Colors.amber,
          child: ListTile(
            title: TextField(
              controller: _toDoTitleController,
            ),
            trailing: ElevatedButton(
                onPressed: toggleDone, child: Text(_doneMessage)),
          )),
    );
  }
}
