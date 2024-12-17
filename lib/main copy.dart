// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutterapp/pages/first_page.dart';
import 'package:flutterapp/pages/home_page.dart';
import 'package:flutterapp/pages/profile_page.dart';
// import 'package:flutterapp/pages/second_page.dart';
import 'package:flutterapp/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // List names = ["Mitch", "Sharon", "Vince"];

  // functions & methods
  void userTapped() {
    print("User tapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
        '/profilepage': (context) => ProfilePage(),
        // '/secondpage': (context) => SecondPage(),
      },
      // home: Scaffold(
      // backgroundColor: const Color.fromARGB(255, 207, 187, 241),
      // appBar: AppBar(
      //   title: Text(
      //     "My App Title",
      //     style: TextStyle(color: Colors.white), // Text color
      //   ),
      //   backgroundColor: Colors.deepPurple,
      //   elevation: 0, // without shadow
      //   leading: Icon(
      //     Icons.menu,
      //   ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.logout,
      //       ),
      //     )
      //   ],
      //   iconTheme: IconThemeData(color: Colors.white),
      // ),
      // body: Center(
      //   child: Container(
      //     height: 300,
      //     width: 300,
      //     // color: Colors.green,
      //     decoration: BoxDecoration(
      //       color: Colors.deepPurple,
      //       borderRadius: BorderRadius.circular(20),
      //     ),
      //     // padding: EdgeInsets.only(left: 25, top: 25),
      //     // padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
      //     padding: EdgeInsets.all(25),
      //     // child: Text(
      //     //   "Yang Edruce",
      //     //   style: TextStyle(
      //     //     color: Colors.white,
      //     //     fontSize: 28,
      //     //     fontWeight: FontWeight.bold,
      //     //   ),
      //     // ),
      //     child: Icon(
      //       Icons.favorite,
      //       color: Colors.white,
      //       size: 32,
      //     ),
      //   ),
      // ),
      // body: ListView(
      //   // ListView -> can scroll for overflow content
      //   // body: Column(
      //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   // crossAxisAlignment: CrossAxisAlignment.start,
      //   scrollDirection: Axis.horizontal,
      //   children: [
      //     // 1st box
      //     // Container(
      //     //   height: 200,
      //     //   width: 200,
      //     //   color: Colors.deepPurple[300],
      //     // ),
      //     // // 2nd box
      //     // Container(
      //     //   height: 200,
      //     //   width: 200,
      //     //   color: Colors.deepPurple[400],
      //     // ),
      //     // Expanded(
      //     //   child: Container(
      //     //     color: Colors.deepPurple[300],
      //     //   ),
      //     // ),
      //     // // 2nd box
      //     // Expanded(
      //     //   // flex: 2, // ratio -> ex: 2:1
      //     //   child: Container(
      //     //     color: Colors.deepPurple[400],
      //     //   ),
      //     // ),
      //     // // 3rd box
      //     // Expanded(
      //     //   child: Container(
      //     //     color: Colors.deepPurple[500],
      //     //   ),
      //     // )

      //     Container(
      //       // height: 350,
      //       width: 350,
      //       color: Colors.deepPurple[200],
      //     ),
      //     Container(
      //       // height: 350,
      //       width: 350,
      //       color: Colors.deepPurple[300],
      //     ),
      //     Container(
      //       // height: 350,
      //       width: 350,
      //       color: Colors.deepPurple[400],
      //     ),
      //   ],
      // ),
      // body: Row(
      //   children: [
      //     Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.deepPurple[200],
      //     ),
      //     Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.deepPurple[300],
      //     ),
      //     Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.deepPurple[400],
      //     ),
      //   ],
      // ),
      // body: ListView.builder(
      //   // itemCount: 10,
      //   itemCount: names.length,
      //   itemBuilder: (context, index) => ListTile(
      //     title: Text(
      //         // index.toString(),
      //         names[index]),
      //   ),
      // ),
      // body: GridView.builder(
      //   itemCount: 64,
      //   gridDelegate:
      //       // how many in each row
      //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      //   itemBuilder: (context, index) => Container(
      //     color: Colors.deepPurple,
      //     margin: EdgeInsets.all(2),
      //   ),
      // ),
      // body: Stack(
      //   alignment: Alignment.center,
      //   children: [
      //     Container(
      //       height: 300,
      //       width: 300,
      //       color: Colors.deepPurple[200],
      //     ),
      //     Container(
      //       height: 200,
      //       width: 200,
      //       color: Colors.deepPurple[300],
      //     ),
      //     Container(
      //       height: 100,
      //       width: 100,
      //       color: Colors.deepPurple[400],
      //     ),
      //   ],
      // ),
      // body: Center(
      //   child: GestureDetector(
      //     // onTap: () {
      //     // do something when user tap on container
      //     // print("User tapped");
      //     // },
      //     onTap: userTapped,
      //     child: Container(
      //       height: 200,
      //       width: 200,
      //       color: Colors.deepPurple[200],
      //       child: Center(child: Text("Tap Me")),
      //     ),
      //   ),
      // ),
      // ),
    );
  }
}
