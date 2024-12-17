// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // text editing controller to get access to what the user typed
  TextEditingController myController = TextEditingController();

  // greeting message
  String greetingMessage = "";

  // greet user
  void greetUser() {
    String userName = myController.text;

    // print(myController.text);
    setState(() {
      greetingMessage = "Hello, " + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // greeting message
              Text(greetingMessage),

              // text field
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your name..",
                ),
              ),

              // button
              ElevatedButton(
                onPressed: greetUser,
                child: Text("Tap"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
