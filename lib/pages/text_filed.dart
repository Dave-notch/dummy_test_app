import 'package:flutter/material.dart';

class TextFiled extends StatefulWidget {
  const TextFiled({super.key});

  @override
  State<TextFiled> createState() => _TextFiledState();
}

class _TextFiledState extends State<TextFiled> {
  TextEditingController myController = TextEditingController();

  String GreetMessege = "";

  void GreetUser() {
    String Username = myController.text;
    setState(() {
      GreetMessege = "Hello, " + Username;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(GreetMessege),
                TextField(
                  controller: myController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'enter some shit',
                  ),
                ),
                ElevatedButton(onPressed: GreetUser, child: Text('tap')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
