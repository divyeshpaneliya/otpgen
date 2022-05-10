import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class otp extends StatefulWidget {
  @override
  _otpState createState() => _otpState();
}

class _otpState extends State<otp> {


  int a = 0, b = 0, c = 0, d = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue.shade100,
          padding: EdgeInsets.all(20),
          alignment: Alignment.topCenter,
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "OTP Generator",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("$a",style: TextStyle(fontSize: 25),),
                ),
                Container(
                  height: 60,
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("$b",style: TextStyle(fontSize: 25),),
                ),
                Container(
                  height: 60,
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("$c",style: TextStyle(fontSize: 25),),
                ),
                Container(
                  height: 60,
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("$d",style: TextStyle(fontSize: 25),),
                ),
              ],
            ),
              GestureDetector(
                onTap: (){
                  var x=Random();
                  var y=Random();
                  var z=Random();
                  var xy=Random();
                  int r1=x.nextInt(10);
                  int r2=y.nextInt(10);
                  int r3=z.nextInt(10);
                  int r4=xy.nextInt(10);
                  setState(() {
                    a=r1;
                    b=r2;
                    c=r3;
                    d=r4;

                  });
                },
                child: Container(
                  height: 60,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade500,
                    borderRadius: BorderRadius.circular(15),),
                  child: Text("GENERATE", style: TextStyle(fontSize: 17, color: Colors.black),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}