import 'package:flutter/material.dart';
import 'package:master/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App '),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text(
            'Welcome to  days of flutter',
            style: TextStyle(
                fontSize: 40,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
