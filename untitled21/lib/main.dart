import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled21/models/save_model.dart';
import 'package:untitled21/pages/add_todo.dart';
import 'package:untitled21/pages/todo_list.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context)=>SaveTask(),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const TodoList(),
        '/add-todo-screen': (_) => AddTodo(),
      },
    );
  }
}