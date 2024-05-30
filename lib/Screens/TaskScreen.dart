import 'package:do_it/Screens/TaskModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'TaskList_screen.dart';
import 'generateNewTask_Screen.dart';


class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context, builder: (context) =>  const GetNewTask(
                  //  (newItemIs){
                  // //  TaskModel.addItem('adf');
                  // //   print("$newItemIs top size");
                  //  }
                   ));
            },
            backgroundColor: Colors.lightBlueAccent,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 60.0, left: 30, right: 30, bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30.0,
                        child: Icon(
                          Icons.menu,
                          size: 30.0,
                          color: Colors.lightBlueAccent,
                        )),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'Let\'s Do it',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      '${Provider.of<TaskModel>(context).taskCount} Tasks',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child:   const TaskList(),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
