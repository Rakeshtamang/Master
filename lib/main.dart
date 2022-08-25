import 'package:flutter/material.dart';
import 'package:master/pages/home.dart';
import 'package:master/pages/login.dart';
import 'package:master/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.HomeRoute,
      routes: {
        "/": (context) => Login(),
        MyRoutes.HomeRoute: ((context) => Home()),
        MyRoutes.LoginRoute: (context) => Login(),
      },
    );
  }
}
