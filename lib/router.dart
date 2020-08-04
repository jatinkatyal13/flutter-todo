import 'package:flutter/material.dart';

import 'views/home.dart';
import 'views/todo.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case '/todo':
        return MaterialPageRoute(builder: (context) => Todo());
      default:
        return MaterialPageRoute(builder: (context) => Home());
    }
  }
}
