import 'package:flutter/material.dart';
import 'package:next_chat/page/chat_screen.dart';
import 'package:next_chat/page/contact_listing.dart';
import 'package:next_chat/page/profile_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    ContactListing(),
    ChatScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.contacts),
            label: "",
          ),
          BottomNavigationBarItem(icon: new Icon(Icons.chat), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
        ],
      ),
      body: _children[_currentIndex],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
