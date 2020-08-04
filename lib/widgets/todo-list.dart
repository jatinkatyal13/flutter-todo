import 'package:flutter/material.dart';
import 'package:sample_todo/models/todo.dart';

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
        return InkWell(
          onTap: () {
            Navigator
              .of(context)
              .pushNamed('/todo');
          },
          child: Center(
            child: Text(
              todos[index].title
            ),
          ),
        );
      }
    );
  }
}
