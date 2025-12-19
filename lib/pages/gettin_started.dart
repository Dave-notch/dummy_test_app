import 'package:dummy_test_app/data/data_base.dart';
import 'package:dummy_test_app/pages/Home_page.dart';
import 'package:dummy_test_app/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class getStarted extends StatefulWidget {
  const getStarted({super.key});

  @override
  State<getStarted> createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  final _mybox = Hive.box('Mybox');
  Tododatebase db = Tododatebase();

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

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: const Key('full_screen'),
      direction: DismissDirection.horizontal,

      confirmDismiss: (direction) async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const HomePage()),
        );
        db.CreateInitialdata();
        return false;
      },
      background: Container(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber[200],
            title: Text('TO DO'),
            elevation: 100,
          ),
          backgroundColor: Colors.green[200],

          drawer: Drawer(),
        ),
      ),

      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                const Color.fromARGB(255, 39, 108, 157),
                const Color.fromARGB(255, 91, 12, 94),
              ],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, right: 160),
                child: Text(
                  "Welcome!!",
                  style: TextStyle(
                    fontSize: 50,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 0
                      ..color = Colors.white.withOpacity(0.7),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25, top: 25),
                child: Text(
                  "Stay organized, stress less, and get more done every single day!!",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..color = Colors.white.withOpacity(0.7),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 410, left: 210, right: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Material(
                    color: const Color.fromARGB(255, 229, 234, 230),
                    child: ListTile(
                      leading: Icon(
                        Icons.login,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      title: Text(
                        'Get Started!!',
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),

                      onTap: () {
                        db.markFirstTimeSeen();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const HomePage()),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
