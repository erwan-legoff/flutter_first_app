import 'package:flutter/material.dart';
import 'package:flutter_fitness/components/todo.dart';
import 'package:flutter_fitness/models/todo.dart';
import 'package:flutter_fitness/models/todo_list.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    final todoList = Provider.of<TodoListModel>(context);

    return Column(
      children: [
        ElevatedButton(
            onPressed: () => todoList.add(TodoModel(
                done: false,
                title: 'new',
                id: DateTime.now().millisecondsSinceEpoch)),
            child: const Text('New Todo')),
        Expanded(
            child: ListView.builder(
          itemCount: todoList.todos.length,
          itemBuilder: (context, index) {
            return Todo(todo: todoList.todos[index]);
          },
        ))
      ],
    );
  }
}
