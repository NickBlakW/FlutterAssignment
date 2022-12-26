import 'package:flutter/material.dart';
import 'package:todolist/components/dialogButton.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  VoidCallback onSave;
  VoidCallback onCancel;

  // ignore: prefer_typing_uninitialized_variables
  final controller;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey,
      content: SizedBox(
        height: 120,
        child: Column(children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Add task"),
          ),
          Row(
            children: [
              DialogButton(text: "Save", onPressed: onSave),
              DialogButton(text: "Cancel", onPressed: onCancel),
            ],
          ),
        ]),
      ),
    );
  }
}
