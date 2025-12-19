// import 'package:dummy_test_app/pages/gettin_started.dart';
// import 'package:dummy_test_app/pages/welcome.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Tododatebase {
  List TodoList = [];
  final _mybox = Hive.box('Mybox');
  // first time opening app
  void CreateInitialdata() {}

  void loadData() {
    TodoList = _mybox.get('TODOLIST');
  }

  void updateDatabase() {
    _mybox.put('TODOLIST', TodoList);
  }

  bool isFirstTime() {
    return _mybox.get('isFirstTime') ?? true;
  }

  void markFirstTimeSeen() {
    _mybox.put('isFirstTime', false);
  }
}
