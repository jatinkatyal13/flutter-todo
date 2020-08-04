import 'package:flutter/material.dart';

import 'views/home.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case '/todo':
        return MaterialPageRoute(builder: (context) => Text('todo item'));
      default:
        return MaterialPageRoute(builder: (context) => Home());
    }
  }
}
