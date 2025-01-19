import 'dart:ffi';

class Todo {
  final bool done;
  final String title;
  final Int32 id;

  Todo({required this.done, required this.title, required this.id});
}
