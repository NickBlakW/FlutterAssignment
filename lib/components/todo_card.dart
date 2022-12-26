import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ToDoCard extends StatelessWidget {
  final String taskName;
  final bool completed;

  Function(bool?)? onChanged;
  Function()? deleteTask;

  ToDoCard(
      {super.key,
      required this.taskName,
      required this.completed,
      required this.onChanged,
      required this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(19.0),
      child: GestureDetector(
        onDoubleTap: deleteTask,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(value: completed, onChanged: onChanged),
                  Text(
                    taskName,
                    style: TextStyle(
                        decoration: completed
                            ? TextDecoration.lineThrough
                            : TextDecoration.none),
                  ),
                ],
              ),
              Text("Double tab to remove",
                  style: TextStyle(color: Colors.black.withOpacity(0.3)))
            ],
          ),
        ),
      ),
    );
  }
}
