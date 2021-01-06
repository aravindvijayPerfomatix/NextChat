import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import 'home_screen.dart';

class VerifyOtp extends StatefulWidget {
  @override
  _VerifyOtpState createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  @override
  Widget build(BuildContext context) {
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
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Verify",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  "Enter the OTP you have ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                OTPTextField(
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth:50,
                  style: TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),

                SizedBox(
                  height: 40,
                ),

                Row(
                  children: [

                    SizedBox(width: 20,),
                    Text("Didn't receive your OTP?"),

                     Text(" Resend",style: TextStyle(color: Colors.blueAccent),),



                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Align(
                  child: FloatingActionButton(
                    onPressed: () {
                       Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Home()
                      )
                      );
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
          )
        ],
      ),
    );
  }
}
