import 'package:flutter/material.dart';

class getStarted extends StatelessWidget {
  const getStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "This Todo app will make your day easier!!",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..color = Colors.white.withOpacity(0.7),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 460, left: 210, right: 20),
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
                      Navigator.pushNamed(context, '/Homepage');
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
