import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  final Function addTaskCallback;
  AddTask(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    String newTaskATitle;

    return Container(
      color: Color(0xff003333),
      child: Container(
        padding: EdgeInsets.all(40.0),
        decoration: BoxDecoration(
          color: Colors.cyan.shade800,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 120),
            Text(
              'Add New Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey.shade100,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter task here...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              cursorColor: Colors.blue,
              cursorWidth: 5.0,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.shade100,
                fontSize: 18,
              ),
              onChanged: (newText) {
                newTaskATitle = newText;
              },
            ),
            SizedBox(
              height: 40,
            ),
            FlatButton(
              color: Colors.cyan,
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                addTaskCallback(newTaskATitle);
              },
            )
          ],
        ),
      ),
    );
  }
}
