import 'package:flutter/material.dart';

import 'views/home.dart';
import 'views/todo.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case '/todo':
        return MaterialPageRoute(builder: (context) => 
          TodoScreen(
            todo: (settings.arguments as Map)['todo']
          )
        );
      default:
        return MaterialPageRoute(builder: (context) => Home());
    }
  }
}
