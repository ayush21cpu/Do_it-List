import 'package:do_it/Screens/TaskModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


var itm=TextEditingController();

class GetNewTask extends StatelessWidget {
 // final Function abc;
    const GetNewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("New Task",style: TextStyle(color:Colors.lightBlueAccent,fontSize: 25),textAlign: TextAlign.center,),
          const SizedBox(height: 30,),
          TextField(
            textAlign: TextAlign.center,
            controller: itm,
            decoration:const InputDecoration(
              hintText: "Add Item",
            ),
          ),
          const SizedBox(height: 10,),
          ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
              shape: MaterialStatePropertyAll(LinearBorder.none),
            ),
            onPressed: () {
              if(itm.text.isNotEmpty) {
                // final task=abc(itm.text);
                Provider.of<TaskModel>(context, listen: false).addTask(itm.text);
                  itm.clear();
                  Navigator.pop(context);
              }
            }, child: const Text("Add"),
          ),
        ],
      ),
    ) ;
  }
}