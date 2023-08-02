import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:login/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        fontFamily: "Schyler",
      primarySwatch: Colors.indigo,
      ),
      home: const LoginScreen(),
    );
  }
}