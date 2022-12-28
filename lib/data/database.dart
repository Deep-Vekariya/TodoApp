import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //raference our box
  final _myBox = Hive.box('MyBox');

  //run this method if this is the 1st time ever opening the app
  void createInitialData() {
    toDoList = [
      ["Drink Water", false],
      ["Do Ecersise", false],
    ];
  }

  //load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDateBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
