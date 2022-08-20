import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Master the flutter in 30 days'),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to  days of flutter'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
