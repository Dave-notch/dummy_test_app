// ignore_for_file: non_constant_identifier_names, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String Taskname;
  final bool taskCompleted;

  Function(bool?)? onChanged;
  Function(BuildContext)? DeleteFunction;
  TodoTile({
    super.key,
    required this.Taskname,
    required this.taskCompleted,
    required this.onChanged,
    required this.DeleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: DeleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
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
      ),
    );
  }
}
