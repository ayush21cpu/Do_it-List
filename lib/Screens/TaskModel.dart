import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'Task.dart';

class TaskModel extends ChangeNotifier{
 TaskModel();
  final List<Task> _tasks=[];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  // ha direct TaskModel.tasks.length se size pta kr sakte hai mayne esko bas sikhne ke liye bnaya hai
  int get taskCount{
    return _tasks.length;
}

/** ab dekho q ki yaha hamne tasks to privet kr diya hai to aab koi user bahr se tasks.add() kr ke call nhi kr sakta use es method ko call krna hi pade ga same tasks.length ke liye bhi ab use tasksCount ko call krna pade ga gaich  and same for accessing tasks list **/
 void addTask(String taskName) {
   _tasks.add(Task(name:taskName)); // Create and add Task here
  notifyListeners();
  }

  void updateCheckBox(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
  notifyListeners();
  }
}