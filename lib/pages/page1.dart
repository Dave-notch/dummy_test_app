// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
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
      counter++;
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('u pushed this button this many times'),
            Text(counter.toString(), style: TextStyle(fontSize: 48)),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Counter!!'),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: CounterReset,
                child: Text('reset'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
