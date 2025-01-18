import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  bool _done = false;
  String _doneMessage = 'To do';
  String _actionMessage = 'Done';

  void toggleDone() {
    setState(() {
      _done = !_done;
      if (_done) {
        _doneMessage = "Done";
        _actionMessage = 'To do';
      } else {
        _doneMessage = 'To do';
        _actionMessage = 'Done';
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
            title: Text(_doneMessage),
            trailing: ElevatedButton(
                onPressed: toggleDone, child: Text(_actionMessage)),
          )),
    );
  }
}
