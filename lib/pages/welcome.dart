import 'package:dummy_test_app/data/data_base.dart';
import 'package:dummy_test_app/pages/gettin_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hive_flutter/hive_flutter.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final _mybox = Hive.box('Mybox');
  Tododatebase db = Tododatebase();

  @override
  void initState() {
    super.initState();

    // Initialize Todo list if empty
    if (_mybox.get("TODOLIST") == null) {
      db.markFirstTimeSeen();
    } else {
      db.loadData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Colors.green, Colors.red],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, right: 210),
              child: Text(
                "Hello!",
                style: TextStyle(
                  fontSize: 70,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 0
                    ..color = Colors.white.withOpacity(0.7),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25, top: 15),
              child: Text(
                "Ready to make Your day productive?",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..color = Colors.white.withOpacity(0.8),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500, left: 270, right: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Material(
                  color: const Color.fromARGB(255, 229, 234, 230),
                  child: ListTile(
                    leading: Icon(
                      Icons.next_plan,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                    title: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),

                    onTap: () {
                      db.markFirstTimeSeen();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => getStarted()),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
