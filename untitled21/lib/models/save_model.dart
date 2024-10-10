import 'package:flutter/cupertino.dart';
import 'package:untitled21/models/task_model.dart';

class SaveTask extends ChangeNotifier {
  List<Task> tasks = [
    Task(title:'Learn Flutter',isCompleted: false),
    Task(title:'Drink Flutter',isCompleted: false),
  ];
  List<Task> get task => tasks;

  void addTask(Task task){
    tasks.add(task);
    notifyListeners();
  }
  void checkTask(int index){
    tasks[index].isDone();
    notifyListeners();
  }

  void removeTask (Task task){
    tasks.remove(task);
    notifyListeners();
  }
}