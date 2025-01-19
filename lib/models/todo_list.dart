import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_fitness/models/todo.dart';

class TodoListModel extends ChangeNotifier {
  final List<Todo> _todos = [];

  UnmodifiableListView<Todo> get todos => UnmodifiableListView(_todos);

  void add(Todo todo) {
    _todos.add(todo);

    notifyListeners();
  }

  void remove(Todo todo) {
    _todos.remove(todo);
    notifyListeners();
  }
}
