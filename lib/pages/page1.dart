// ignore_for_file: camel_case_types, non_constant_identifier_names
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:dummy_test_app/pages/page1.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  void _incrementCounter() {
    setState(() {
      // counter += 9000000000000000000 * 9000000000000000000;
      counter += 1;
    });
  }

  void CounterReset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You pushed this button this many times',
              style: TextStyle(fontSize: 20),
            ),
            Text(counter.toString(), style: TextStyle(fontSize: 48)),
            SizedBox(
              width: 110,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[400],
                ),
                onPressed: _incrementCounter,
                child: Text('Counter!!', style: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 110,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[400],
                ),
                onPressed: CounterReset,
                child: Text('reset', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
