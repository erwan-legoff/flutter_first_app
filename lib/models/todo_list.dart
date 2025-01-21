import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_fitness/models/todo.dart';

class TodoListModel extends ChangeNotifier {
  final List<TodoModel> _todos = [];

  UnmodifiableListView<TodoModel> get todos => UnmodifiableListView(_todos);

  void add(TodoModel todo) {
    _todos.add(todo);

    notifyListeners();
  }

  void remove(TodoModel todo) {
    _todos.remove(todo);
    notifyListeners();
  }

  void updateTodo(int id, {bool? done, String? title}) {
    int index = _todos.indexWhere((todo) => todo.id == id);
    if (index != -1) {
      final currentTodo = _todos[index];
      _todos[index] = TodoModel(
        id: currentTodo.id,
        title: title ?? currentTodo.title,
        done: done ?? currentTodo.done,
      );
      notifyListeners();
    }
  }

  // Récupérer un todo par ID
  TodoModel? getTodoById(int id) {
    return _todos.firstWhere((todo) => todo.id == id);
  }
}
