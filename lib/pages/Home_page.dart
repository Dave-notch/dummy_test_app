// ignore: unused_import
// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:dummy_test_app/Utilities/Todo_list.dart';
import 'package:dummy_test_app/Utilities/dialog_box.dart';
import 'package:dummy_test_app/data/data_base.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // referencing Hive box
  final _mybox = Hive.box('Mybox');
  final _controller = TextEditingController();
  Tododatebase db = Tododatebase();

  //checkbox tapped
  void CheckboxChanged(bool? value, index) {
    setState(() {
      db.TodoList[index][1] = !db.TodoList[index][1];
    });
    db.updateDatabase();
  }

  // first time opening default data

  @override
  void initState() {
    super.initState();

    // Initialize Todo list if empty
    if (_mybox.get("TODOLIST") == null) {
      db.CreateInitialdata();
    } else {
      db.loadData();
    }
  }

  void SaveNewtask() {
    setState(() {
      db.TodoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDatabase();
  }

  void createNewtask() {
    setState(() {
      showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            Onsave: SaveNewtask,
            Oncancel: () => Navigator.of(context).pop(),
          );
        },
      );
    });
  }

  void deleteTask(int index) {
    setState(() {
      db.TodoList.removeAt(index);
    });
    db.updateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
          itemCount: db.TodoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
              Taskname: db.TodoList[index][0],
              taskCompleted: db.TodoList[index][1],
              onChanged: (value) => CheckboxChanged(value, index),
              DeleteFunction: (context) => deleteTask(index),
            );
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: ListTile(
                  leading: Text(
                    "</>",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  title: Text('Contact with the Dev'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// incoming Updates "Plan your Whole day"