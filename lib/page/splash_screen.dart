import 'dart:async';

import 'package:flutter/material.dart';
import 'package:next_chat/page/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}




class _SplashScreenState extends State<SplashScreen> {


  _startTimer() async {
    var _duration = Duration(seconds: 4);
    return Timer(_duration, _navigateToPage);
  }

  void _navigateToPage() {
     Navigator.pushReplacement(
         context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Container(
           height: 130,
           width: 130,
           child: Image.asset("images/logo.png"),
         ),
         SizedBox(height: 30,),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
               "Next",
               style: TextStyle(
                   fontSize: 25,
                   color: Color(0xff232323),
                   fontWeight: FontWeight.w800),
             ),
             Text(
               "Chat",
               style: TextStyle(
                   fontSize: 25,
                   color: Color(0xff232323),
                   fontWeight: FontWeight.w300),
             ),
           ],
         )
       ],
      ),
    );
  }


  @override
  void initState() {
    super.initState();
    _startTimer();
  }

}
