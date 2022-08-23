import 'package:flutter/material.dart';
import 'package:master/pages/home.dart';
import 'package:master/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Login(),
        "/home": ((context) => Login()),
        "/login": (context) => Login(),
      },
    );
  }
}
