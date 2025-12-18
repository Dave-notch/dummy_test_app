import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

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
              padding: const EdgeInsets.only(top: 100, right: 160),
              child: Text(
                "Hello!",
                style: TextStyle(
                  fontSize: 90,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 0
                    ..color = Colors.white.withOpacity(0.8),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25, top: 15),
              child: Text(
                "Ready to make today productive?",
                style: TextStyle(
                  fontSize: 47,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..color = Colors.white.withOpacity(0.8),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450, left: 270, right: 20),
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
                      Navigator.pushNamed(context, '/getStarted');
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
