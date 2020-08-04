import 'package:flutter/material.dart';

import 'package:sample_todo/widgets/todo-list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> todos = [];

  addTodo() {
    setState(() {
      todos.add('bleh');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TextField(),
              ),
              FlatButton(
                onPressed: addTodo,
                child: Text(
                  'Add +'
                ),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: TodoList(
              todos: todos
            ),
          ),
        ],
      ),
    );
  }
}
