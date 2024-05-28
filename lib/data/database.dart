import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference out box
  final _myBox = Hive.box('myBox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    // list of todo tasks
    toDoList = [
      ["Make tutorial", false],
      ["Do Exercise", false],
      ["Study", false],
      ["Work", false],
    ];
  }

  // load the data from database
  void loadDataBase() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
