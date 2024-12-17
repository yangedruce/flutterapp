// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => CounterPageState();
}

class CounterPageState extends State<CounterPage> {
  // variable
  int _counter = 0;

  // methods
  void _incrementCounter() {
    // rebuild the widget
    setState(() {
      _counter++;
    });
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // message
            Text("You pushed the button this many times:"),

            // counter value
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 40),
            ),

            // button
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text("Increment!"),
            )
          ],
        ),
      ),
    );
  }
}
