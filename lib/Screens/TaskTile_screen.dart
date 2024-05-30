import 'package:flutter/material.dart';

class ListOfItem extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final ValueChanged<bool?>? checkboxCallbock;
  final VoidCallback? longPressCall;
   const ListOfItem({super.key, required this.isChecked, required this.taskTitle,required this.checkboxCallbock, this.longPressCall});

  @override
  Widget build(BuildContext context) {
    return  ListTile (
              onLongPress: longPressCall,
              title: Text(taskTitle,style: TextStyle(
                decoration: isChecked? TextDecoration.lineThrough:null,
              ),),


              trailing: Checkbox(
                activeColor: Colors.lightBlueAccent,
                value: isChecked,
                 onChanged:checkboxCallbock,
              ),
            );
            //return Text(taskList[index],style: const TextStyle(color: Colors.black),);
          }
}




