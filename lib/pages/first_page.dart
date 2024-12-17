// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutterapp/pages/home_page.dart';
import 'package:flutterapp/pages/profile_page.dart';
import 'package:flutterapp/pages/settings_page.dart';
// import 'package:flutterapp/pages/second_page.dart';

class FirstPage extends StatefulWidget {
// class FirstPage extends StatelessWidget {
  // const FirstPage({super.key});
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // method to navigate bottom bar
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // this top keep track of the current page to display
  int _selectedIndex = 0;

  // list of pages
  final List _pages = [
    // homepage
    HomePage(),

    // profile
    ProfilePage(),

    //settings
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "First Page",
          style: TextStyle(color: Colors.white), // Text color
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          // home
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),

          // profile
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),

          // settings
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
      ),
      // drawer: Drawer(
      //   backgroundColor: Colors.deepPurple[100],
      //   child: Column(
      //     children: [
      //       // common to place drawer header here
      //       DrawerHeader(
      //         child: Icon(
      //           Icons.favorite,
      //           size: 48,
      //         ),
      //       ),

      //       // home lists
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("H O M E"),
      //         onTap: () {
      //           //pop drawer first
      //           Navigator.pop(context);

      //           Navigator.pushNamed(context, '/homepage');
      //         },
      //       ),

      //       // setting lists
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text("S E T T I N G S"),
      //         onTap: () {
      //           Navigator.pushNamed(context, '/settingspage');
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Go To Second Page"),
      //     onPressed: () {
      //       // navigate to second page
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(
      //       //     builder: (context) => SecondPage(),
      //       //   ),
      //       // );
      //       Navigator.pushNamed(context, '/secondpage');
      //     },
      //   ),
      // ),
    );
  }
}
