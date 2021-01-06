import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:next_chat/page/verify_otp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [


          Padding(
            padding: const EdgeInsets.only(left: 38.0, right: 38.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*  Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.ac_unit,
                    size: 50,
                    color: Colors.black38,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Splash",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "This is a test screen",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black54,
                        fontSize: 10,
                        letterSpacing: 2),
                  ),
                ],
              ),*/
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text("Phone Number",style: TextStyle(fontSize: 16),),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(

                      hintText: 'Enter your phone number',
                     /* border: InputBorder.none,*/

                      prefixIcon: Icon(Icons.ad_units_rounded)
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              /*  Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("OTP",style: TextStyle(fontSize: 16),),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabled: false,
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Enter OTP',

                  ),
                  validator: (val) =>
                      val.length < 6 ? 'Password too short.' : null,
                  obscureText: true,
                ),*/
                SizedBox(
                  height: 40,
                ),
                Align(
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyOtp()));
                    },
                    elevation: 0,
                    backgroundColor: Colors.deepOrangeAccent,
                    child: Icon(Icons.arrow_forward),
                  ),
                  alignment: Alignment.centerRight,
                ),
                SizedBox(
                  height: 70,
                ),

                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
