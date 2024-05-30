import 'package:do_it/Screens/TaskModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/TaskScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers:  [
      ChangeNotifierProvider(create:(context) =>TaskModel())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:TaskScreen(),
      ),
    );
  }
}
