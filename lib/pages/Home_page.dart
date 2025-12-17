// ignore: unused_import
// ignore_for_file: non_constant_identifier_names

import 'package:dummy_test_app/Utilities/Todo_list.dart';
import 'package:dummy_test_app/Utilities/dialog_box.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List TodoList = [
    ['make totorial', false],
    ['do exercise', false],
  ];

  //checkbox tapped
  void CheckboxChanged(bool? value, int index) {
    setState(() {
      TodoList[index][1] = !TodoList[index][1];
    });
  }

  void newTaskname() {
    TextField();
  }

  void createNewtask() {
    setState(() {
      showDialog(
        context: context,
        builder: (context) {
          return DialogBox();
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[200],
        title: Text('TO DO'),
        elevation: 100,
      ),
      backgroundColor: Colors.green[200],
      floatingActionButton: FloatingActionButton(
        onPressed: createNewtask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: TodoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            Taskname: TodoList[index][0],
            taskCompleted: TodoList[index][1],
            onChanged: (value) => CheckboxChanged(value, index),
          );
        },
      ),
    );
  }
}
