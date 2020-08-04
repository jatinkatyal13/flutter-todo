import 'package:flutter/material.dart';
import 'package:sample_todo/models/todo.dart';

class TodoScreen extends StatelessWidget {
  final Todo todo;

  TodoScreen({ 
    @required Todo todo 
  }) : this.todo = todo;

  @override
  Widget build(BuildContext context) {
    print(ModalRoute.of(context).settings.arguments);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home'
        ),
      ),
      body: Center(
        child: Text(
          todo.title
        ),
      ),
    );
  }
}
