import 'package:flutter/material.dart';
import 'package:master/pages/home.dart';
import 'package:master/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/home",
      routes: {
        "/": (context) => Login(),
        "/home": ((context) => Home()),
        "/login": (context) => Login(),
      },
    );
  }
}
