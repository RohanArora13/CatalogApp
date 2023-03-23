import 'package:flutter/material.dart';
import 'package:scanner/models/catalog.dart';

import '../widgets/ItemWidget.dart';
import '../widgets/MyDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List newList = List.generate(20, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catlog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: newList.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemWidget(item: newList[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
