import 'package:flutter/material.dart';
import 'package:to_do/screen/todo_screen.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Daily Thoughts",
      home: todoScreen(),
    );
  }
}
