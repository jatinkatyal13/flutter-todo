import 'package:flutter/material.dart';
import 'package:sample_todo/models/todo.dart';
import 'package:sample_todo/widgets/todo-list-item.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;

  TodoList({
    List<Todo> todos
  }): this.todos = todos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return TodoListItem(
          todo: todos[index],
        );
      }
    );
  }
}
