import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoye_flutter/modal/task_data.dart';

String  newTaskTitle='';
class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
         decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              }
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              style:  ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
              ),
              child: Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
               Provider.of<TaskData>(context,listen:false).addTask(newTaskTitle);
               Navigator.pop(context);
                },
            ),
          ],
        ),
      ),
    );
  }
}