import 'package:flutter/material.dart';
import 'package:master/pages/home.dart';
import 'package:master/pages/login.dart';
import 'package:master/utils/routes.dart';
import 'package:master/widgets/themes.dart';
import 'widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
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
