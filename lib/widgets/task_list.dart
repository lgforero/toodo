import 'package:flutter/material.dart';
import 'package:toodo/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:toodo/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkboxCallback: (checkboxState) {
//            setState(() {
//              widget.tasks[index].toggleDone();
//            });
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
