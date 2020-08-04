import 'package:flutter/material.dart';
import 'package:sample_todo/models/todo.dart';
import 'package:sample_todo/widgets/todo-list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Todo> todos = [];
  TextEditingController _addTodoController = TextEditingController(text: '');

  addTodo() {
    setState(() {
      if (_addTodoController.text.length > 0) {
        Todo newTodo = Todo(
          title: _addTodoController.text
        );

        todos.add(newTodo);
        _addTodoController.text = '';
      }
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
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: TextField(
                    controller: _addTodoController,
                  ),
                ),
                FlatButton(
                  onPressed: addTodo,
                  child: Text(
                    'Add +'
                  ),
                ),
              ],
            ),
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
