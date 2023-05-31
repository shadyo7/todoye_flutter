import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Bring Milk'),
    Task(name: 'Bring bread'),
    Task(name: 'Bring Milk'),
  ];

  UnmodifiableListView <Task> get tasks {
     return UnmodifiableListView(_tasks);
  }
    int get countTask{
      return _tasks.length;
    }

   void addTask(String newTaskTitle){
     final task= Task(name: newTaskTitle);
     _tasks.add(task);
     notifyListeners();
   }

   void updateTask(Task task){
     task.toggleDone();
     notifyListeners();
   }

   void deleteTask(Task task){
      _tasks.remove(task);
      notifyListeners();
   }
}