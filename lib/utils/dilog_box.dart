import 'package:flutter/material.dart';
import 'package:todo_app/utils/my_button.dart';

class DilogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCancel;
  DilogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.pink[200],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Get user input
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add New Task"),
            ),

            //button -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButton(buttonName: "Save", onPressed: onSave),
                const SizedBox(width: 8),
                //cancel button
                MyButton(buttonName: "Cancel", onPressed: onCancel)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
