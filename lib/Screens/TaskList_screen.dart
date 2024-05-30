import 'package:do_it/Screens/TaskModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'TaskTile_screen.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key,});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskModel>(
      builder: (BuildContext context, TaskModel value, Widget? child) =>

          ListView.builder(
          itemBuilder: (BuildContext context, int index) {
              return ListOfItem(taskTitle:value.tasks[index].name,isChecked: value.tasks[index].isDone,
              checkboxCallbock: (bool? asasasa){
                 value.updateCheckBox(value.tasks[index]);
              }, longPressCall: (){
                value.deleteTask(value.tasks[index]);
                },);
            },
          itemCount: value.taskCount,
      ),
    );
  }
}
