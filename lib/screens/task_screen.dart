import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toodo/screens/add_task_screen.dart';
import 'package:toodo/widgets/task_list.dart';
import 'package:provider/provider.dart';
import 'package:toodo/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade900,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'ForeroTD',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'You have ${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTask((newTaskTitle) {
//              setState(() {
//                tasks.add(Task(name: newTaskTitle));
//              });
              Navigator.pop(context);
            }),
            isScrollControlled: true,
          );
        },
        backgroundColor: Colors.grey,
        child: Icon(
          Icons.add,
          size: 40,
          color: Colors.cyan.shade800,
        ),
      ),
    );
  }
}
