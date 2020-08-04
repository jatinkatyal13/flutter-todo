import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  final List<String> todos;

  TodoList({
    List<String> todos
  }): this.todos = todos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return Center(
          child: Text(
            todos[index]
          )
        );
      },
    );
  }
}
