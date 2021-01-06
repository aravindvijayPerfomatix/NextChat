import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(

        itemCount: 80,
       itemBuilder: (context, position) {

         return Card(
           child: Padding(
             padding: const EdgeInsets.all(16.0),
             child: Text(position.toString(), style: TextStyle(fontSize: 22.0),),
           ),
         );
       },
          ),
    );
  }
}
