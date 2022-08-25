import 'package:flutter/material.dart';
import 'package:master/Models/catalog.dart';
import 'package:master/widgets/drawer.dart';
import 'package:master/widgets/itemwidget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, ((index) => CatalogModel.products[0]));
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App '),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: ((context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          })),
      drawer: MyDrawer(),
    );
  }
}
