// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String Taskname;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  TodoTile({
    super.key,
    required this.Taskname,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Container(
        padding: EdgeInsets.all(25),

        child: Row(
          children: [
            // checkbox
            Checkbox(value: taskCompleted, onChanged: onChanged),
            // text
            Text(
              Taskname,
              style: TextStyle(
                fontSize: 20,
                decoration: taskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
