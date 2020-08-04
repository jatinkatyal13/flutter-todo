import 'package:sample_todo/models/base-model.dart';

class Todo extends Model {
  int id;
  String title;
  bool completed;

  Todo({
    int id,
    String title,
    bool completed = false
  }) : this.id = id, this.title = title, this.completed = completed;

  static Todo fromMap(Map<String, dynamic> payload) {
    return Todo(
      id: payload['id'],
      title: payload['title'],
      completed: payload['completed']
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
			'title': title,
			'completed': completed
		};

		if (id != null) map['id'] = id;

		return map;
  }
}
