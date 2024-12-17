// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Settings Page",
      //     style: TextStyle(color: Colors.white), // Text color
      //   ),
      //   backgroundColor: Colors.deepPurple,
      //   iconTheme: IconThemeData(color: Colors.white),
      // ),
      body: Center(
        child: Text("Settings Page"),
      ),
    );
  }
}
