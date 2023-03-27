import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:scanner/models/catalog.dart';

import '../widgets/GridTile.dart';
import '../widgets/ItemWidget.dart';
import '../widgets/MyDrawer.dart';
import 'dart:developer';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(data);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});

    // var itemList = jsonResult["products"];
    // final List<Item> itemsList = ;

    //print(itemList); //latest Dart
  }

  @override
  Widget build(BuildContext context) {
    //List newList = List.generate(20, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catlog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
            ? GridView.builder(
                itemCount: CatalogModel.items!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (BuildContext context, int index) {
                  final item = CatalogModel.items![index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      //set border radius more than 50% of height and width to make circle
                    ),
                    child: ProductGridtile(item: item),
                  );
                },
              )

            // ? ListView.builder(
            //     itemCount: CatalogModel.items?.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return ItemWidget(item: CatalogModel.items![index]);
            //     },
            //   )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
