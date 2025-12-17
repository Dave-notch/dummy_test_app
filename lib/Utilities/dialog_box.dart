import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green[200],
      content: Container(
        height: 200,
        width: 500,
        child: TextField(
          decoration: InputDecoration(
            hintText: "Enter your New tast",
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
