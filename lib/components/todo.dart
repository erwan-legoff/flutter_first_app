import 'package:flutter/material.dart';
import 'package:flutter_fitness/models/todo.dart';
import 'package:flutter_fitness/models/todo_list.dart';
import 'package:provider/provider.dart';

class Todo extends StatelessWidget {
  final TodoModel todo;

  const Todo({required this.todo, super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoListModel>(
      builder: (context, todoList, child) {
        return SizedBox(
          width: 400,
          height: 100,
          child: Card(
            color: todo.done ? Colors.blueGrey : Colors.amber,
            child: ListTile(
              title: TextField(
                controller: TextEditingController(text: todo.title),
                onSubmitted: (value) {
                  if (value.isNotEmpty) {
                    todoList.updateTodo(todo.id, title: value);
                  }
                },
              ),
              trailing: Checkbox(
                value: todo.done,
                onChanged: (value) {
                  if (value != null) {
                    todoList.updateTodo(todo.id, done: value);
                  }
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
