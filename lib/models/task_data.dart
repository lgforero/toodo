import 'package:flutter/foundation.dart';
import 'package:toodo/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Lavar Carro', isDone: false),
    Task(name: 'Llamar a mi mama', isDone: false),
    Task(name: 'Tender la cama', isDone: false),
  ];

  int get taskCount {
    return tasks.length;
  }
}
