import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepPurpleAccent, Colors.purple],
          ),
        ),
     child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(0.8),
            child: OverflowBar(
              overflowAlignment: OverflowBarAlignment.center,
              overflowSpacing: 20,
              children: [
                Image(image: AssetImage('images/signin_balls.png')),
              Text("Welcome!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
                Text("Please, LogIn",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: size.height*0.024),
                TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.indigo[800]),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 25.0),
                    filled: true,
                    hintText: "Enter your Email/User Name",
                    prefixIcon: IconButton(
                        onPressed:(){},
                        icon: Icon(Icons.person),),
                    fillColor: Colors.white60,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
                ),
       //SizedBox(height: size.height*0.020),
       TextField(
         keyboardType: TextInputType.text,
         style: TextStyle(color: Colors.indigo[800]),
         decoration: InputDecoration(
           contentPadding: EdgeInsets.symmetric(vertical: 25.0),
           filled: true,
           hintText: "Enter your Password",
           prefixIcon: IconButton(
             onPressed:(){},
             icon: Icon(Icons.password),),
           fillColor: Colors.white60,
           border: OutlineInputBorder(
             borderSide: BorderSide.none,
             borderRadius: BorderRadius.circular(37),
           ),
         ),
       ),
              // SizedBox(height: size.height*0.020),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Container(
                    alignment: Alignment.center,
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[700],
                    borderRadius: BorderRadius.circular(37),
                  ),
                    child: Text("Continue",
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                ),
                  onPressed: (){},),
                SizedBox(height: size.height*0.014),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(225, 225, 225, 0.28),
                      borderRadius: BorderRadius.circular(37),
                    ),
                    child: Text("OR - Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                      ),),
                  ),
                  onPressed: (){},),
                //Image(image: AssetImage('images/design.svg')),
              ],
            ),
          ),
        ),
      ),
     // ),

    );
  }
}
