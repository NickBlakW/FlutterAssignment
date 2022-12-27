import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Card extends StatelessWidget {
  final String todo;
  final bool completed;

  Function(bool?)? onChanged;
  Function()? deleteTodo;

  Card(
      {super.key,
      required this.todo,
      required this.completed,
      required this.onChanged,
      required this.deleteTodo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(19.0),
      child: GestureDetector(
        onDoubleTap: deleteTodo,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(value: completed, onChanged: onChanged),
                  Text(
                    todo,
                    style: TextStyle(
                        decoration: completed
                            ? TextDecoration.lineThrough
                            : TextDecoration.none),
                  ),
                ],
              ),
              Text("Double tab to delete task",
                  style: TextStyle(color: Colors.grey.withOpacity(0.3)))
            ],
          ),
        ),
      ),
    );
  }
}
