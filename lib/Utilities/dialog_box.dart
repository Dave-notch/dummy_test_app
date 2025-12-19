// ignore_for_file: sized_box_for_whitespace, non_constant_identifier_names
import 'package:dummy_test_app/Utilities/my_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  final controller;
  VoidCallback Onsave;
  VoidCallback Oncancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.Onsave,
    required this.Oncancel,
  });

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  bool hasError = false;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green[200],

      content: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          height: 200,
          width: 500,
          child: Column(
            children: [
              TextField(
                controller: widget.controller,
                decoration: InputDecoration(
                  hintText: "Enter your New task",
                  border: OutlineInputBorder(),
                  errorText: hasError ? "Task can't be empty" : null,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  children: [
                    Buttons(
                      text: 'Save',
                      onPressed: () {
                        if (widget.controller.text.trim().isEmpty) {
                          setState(() {
                            hasError = true;
                          });
                          return;
                        }

                        setState(() {
                          hasError = false;
                        });

                        widget.Onsave();
                      },
                    ),
                    const SizedBox(width: 110),
                    Buttons(text: 'Cancel', onPressed: widget.Oncancel),
                    // Cancel button
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
