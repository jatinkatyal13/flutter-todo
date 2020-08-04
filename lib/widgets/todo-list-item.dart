import 'package:flutter/material.dart';
import 'package:sample_todo/models/todo.dart';

class TodoListItem extends StatelessWidget {
  final Todo todo;

  TodoListItem({
    Todo todo
  }) : this.todo = todo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator
          .of(context)
          .pushNamed(
            '/todo',
            arguments: <String, Object> {
              'todo': todo
            }
          );
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Text(
            todo.title,
            style: Theme.of(context).textTheme.bodyText1
          ),
        ),
      ),
    );
  }  
}
