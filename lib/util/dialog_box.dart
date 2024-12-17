// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutterapp/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Add a new task',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black,
                      width: 1.0), // Outline color when not focused
                  borderRadius:
                      BorderRadius.circular(2.0), // Optional: rounded corners
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.yellow[800] ?? Colors.yellow,
                      width: 2.0), // Outline color when focused
                  borderRadius:
                      BorderRadius.circular(2.0), // Optional: rounded corners
                ),
              ),
            ),

            // buttons -> save input and cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(
                  text: "Save",
                  onPressed: onSave,
                ),

                const SizedBox(
                  width: 8,
                ),

                // cancel button
                MyButton(
                  text: "Cancel",
                  onPressed: onCancel,
                )
              ],
            )
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero, // Removes rounded corners
      ),
    );
  }
}
