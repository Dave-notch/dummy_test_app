// ignore_for_file: sized_box_for_whitespace, must_be_immutable
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  Buttons({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      child: MaterialButton(
        onPressed: onPressed,
        color: Colors.green[700],
        child: Text(text, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
